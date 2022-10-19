
#include <matx.h>

auto max_wealth(matx::tensor_t<int32_t, 2> accounts) -> matx::tensor_t<int32_t, 0> {
  auto sums = matx::make_tensor<int32_t>({accounts.Shape()[0]});
  matx::sum(sums, accounts);
  auto max = matx::make_tensor<int32_t>();
  matx::rmax(max, sums);
  return max;
}

auto main() -> int {

  auto t = matx::make_tensor<int32_t>({2, 3});
  t.SetVals({{1, 2, 3}, {3, 2, 1}});
  max_wealth(t).Print(); // 6

  auto t2 = matx::make_tensor<int32_t>({3, 2});
  t2.SetVals({{1, 5}, {7, 3}, {3, 5}});
  max_wealth(t2).Print(); // 10

  auto t3 = matx::make_tensor<int32_t>({3, 3});
  t3.SetVals({{2, 8, 7}, {7, 1, 3}, {1, 9, 5}});
  max_wealth(t3).Print(); // 17

  return 0;
}
