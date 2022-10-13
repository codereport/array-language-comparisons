
#include <iostream>
#include <matx.h>

auto main() -> int {

  auto arr = matx::make_tensor<int32_t>({3, 3});
  arr.SetVals({{1, 2, 3}, {4, 5, 6}, {7, 8, 9}});

  arr.Print();

  return 0;
}