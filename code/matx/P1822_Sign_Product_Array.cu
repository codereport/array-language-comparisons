
#include <matx.h>

auto array_sign(matx::tensor_t<int32_t, 1> nums) -> matx::tensor_t<int32_t, 0> {
  auto sign = matx::make_tensor<int32_t>({});
  (sign = matx::prod(matx::max(matx::min(nums, 1), -1))).run();
  return sign;
}

auto main() -> int {

  auto t = matx::make_tensor<int32_t>({7});
  t.SetVals({-1, -2, -3, -4, 3, 2, 1});
  matx::print(array_sign(t));

  auto t2 = matx::make_tensor<int32_t>({5});
  t2.SetVals({1, 5, 0, 2, -3});
  matx::print(array_sign(t2));

  return 0;
}
