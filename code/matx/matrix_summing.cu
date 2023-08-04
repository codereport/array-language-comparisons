
#include <matx.h>

auto main() -> int {

  // Original matrix
  auto t = matx::make_tensor<int32_t>({3, 3});
  (t = matx::reshape<t.Rank()>(matx::range<0>({TotalSize(t)}, 1, 1), t.Shape())).run();
  matx::print(t)

  // Summing by rows
  auto row_sums = matx::make_tensor<int32_t>({3});
  (row_sums = matx::sum(t, {0})).run();
  matx::print(row_sums);

  // Summing by columns
  auto col_sums = matx::make_tensor<int32_t>({3});
  (col_sums = matx::sum(t, {1})).run();
  matx::print(col_sums);

  // Summing down to scalar
  auto scalar_sum = matx::make_tensor<int32_t>({});
  // Same as across all axes: (scalar_sum = matx::sum(t, {0, 1})).run();
  (scalar_sum = matx::sum(t)).run();
  matx::print(scalar_sum);

  return 0;
}
