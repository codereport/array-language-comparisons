
#include <matx.h>

auto count_negatives(matx::tensor_t<int32_t, 2> grid) -> matx::tensor_t<int32_t, 0> {
  auto res  = matx::make_tensor<int32_t>();
  matx::sum(res, grid < 0);
  return res;
}

auto main() -> int {

  auto t = matx::make_tensor<int32_t>({4, 4});
  t.SetVals({{4, 3, 2, -1}, {3, 2, 1, -1}, {1, 1, -1, -2}, {-1, -1, -2, -3}});
  count_negatives(t).Print();

  auto t2 = matx::make_tensor<int32_t>({2, 2});
  t2.SetVals({{1, 2}, {3, 4}});
  count_negatives(t2).Print();

  return 0;
}
