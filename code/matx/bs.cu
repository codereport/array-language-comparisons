#include "matx.h"
#include <cassert>
#include <cstdio>
#include <math.h>
#include <memory>

using namespace matx;

/**
 * MatX uses C++ expression templates to build arithmetic expressions that compile into a lazily-evaluated
 * type for executing on the device. Currently, nvcc cannot see certain optimizations
 * when building the expression tree that would be obvious by looking at the code. Specifically any code reusing
 * the same tensor multiple times appears to the compiler as separate tensors, and it may issue multiple load
 * instructions. While caching helps, this can have a slight performance impact when compared to native CUDA
 * kernels. To work around this problem, complex expressions can be placed in a custom operator by adding some
 * boilerplate code around the original expression. This custom operator can then be used either alone or inside
 * other arithmetic expressions, and only a single load is issues for each tensor.
 *
 * This example uses the Black-Scholes equtation to demonstrate the two ways to implement the equation in MatX, and
 * shows the performance difference.
 */

/* Custom operator */
template <class O, class I1, class I2, class I3, class I4, class I5>
class BlackScholes : public BaseOp<BlackScholes<O, I1, I2, I3, I4, I5>>
{
private:
    O out_;
    I1 K_;
    I2 V_;
    I3 S_;
    I4 r_;
    I5 T_;

public:
    BlackScholes(O out, I1 K, I2 V, I3 S, I4 r, I5 T)
        : out_(out), V_(V), S_(S), K_(K), r_(r), T_(T) {}

    __device__ inline void operator()(index_t idx)
    {
        auto V = V_();
        auto K = K_();
        auto S = S_(idx);
        auto T = T_();
        auto r = r_();

        auto VsqrtT = V * sqrt(T);
        auto d1 = (log(S / K) + (r + 0.5f * V * V) * T) / VsqrtT;
        auto d2 = d1 - VsqrtT;
        auto cdf_d1 = normcdff(d1);
        auto cdf_d2 = normcdff(d2);
        auto expRT = exp(-1.f * r * T);

        out_(idx) = S * cdf_d1 - K * expRT * cdf_d2;
    }

    __host__ __device__ inline index_t Size(uint32_t i) const { return out_.Size(i); }
    static inline constexpr __host__ __device__ int32_t Rank() { return O::Rank(); }
};

template <typename T1>
void compute_black_scholes_matx(tensor_t<T1, 0> &K,
                                tensor_t<T1, 1> &S,
                                tensor_t<T1, 0> &V,
                                tensor_t<T1, 0> &r,
                                tensor_t<T1, 0> &T,
                                tensor_t<T1, 1> &output,
                                cudaExecutor &exec)
{
    auto VsqrtT = V * sqrt(T);
    auto d1 = (log(S / K) + (r + 0.5f * V * V) * T) / VsqrtT;
    auto d2 = d1 - VsqrtT;
    auto cdf_d1 = normcdf(d1);
    auto cdf_d2 = normcdf(d2);
    auto expRT = exp(-1.f * r * T);

    (output = S * cdf_d1 - K * expRT * cdf_d2).run(exec);
}

int main([[maybe_unused]] int argc, [[maybe_unused]] char **argv)
{
    MATX_ENTER_HANDLER();

    using dtype = float;

    index_t input_size = 100000;
    auto output_tensor = make_tensor<dtype>({input_size});
    auto S_tensor = make_tensor<dtype>({input_size});
    auto K_tensor = make_tensor<dtype>({});
    auto V_tensor = make_tensor<dtype>({});
    auto r_tensor = make_tensor<dtype>({});
    auto T_tensor = make_tensor<dtype>({});
    float time_ms;
    int num_iterations = 99;

    for (index_t i = 0; i < input_size; i++)
    {
        S_tensor(i) = (dtype)90 + dtype(i % 20);
    }
    K_tensor() = (dtype)100.;
    V_tensor() = (dtype)0.1;
    r_tensor() = (dtype)0.05;
    T_tensor() = (dtype)1.0;

    cudaStream_t stream;
    cudaStreamCreate(&stream);
    cudaExecutor exec{stream};
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);

    BlackScholes(output_tensor, K_tensor, V_tensor, S_tensor, r_tensor, T_tensor).run(exec);
    exec.sync();

    cudaEventRecord(start, stream);
    for (int i = 0; i < num_iterations; i++)
    {
        BlackScholes(output_tensor, K_tensor, V_tensor, S_tensor, r_tensor, T_tensor).run(exec);
    }
    cudaEventRecord(stop, stream);
    exec.sync();
    cudaEventElapsedTime(&time_ms, start, stop);

    printf("Black-Scholes time = %.2fus per iteration\n",
           time_ms * 1e3 / num_iterations);

    compute_black_scholes_matx(K_tensor, S_tensor, V_tensor, r_tensor, T_tensor, output_tensor, exec);

    printf("First 20 values of computed Black-Scholes output:\n");
    for (index_t i = 0; i < 20; i++)
    {
        printf("%f\n", static_cast<float>(output_tensor(i)));
    }

    cudaStreamDestroy(stream);
    MATX_CUDA_CHECK_LAST_ERROR();
    MATX_EXIT_HANDLER();
}
