
#include <arrayfire.h>

auto max_wealth(af::array accounts) -> af::array {
  return af::max(af::sum(accounts, 1));
}

auto main() -> int {

  int const data[] = {1, 2, 3, 3, 2, 1};
  int const data2[] = {1, 5, 7, 3, 3, 5};
  int const data3[] = {2, 8, 7, 7, 1, 3, 1, 9, 5};
  auto const accounts = af::transpose(af::array(3, 2, data));
  auto const accounts2 = af::transpose(af::array(2, 3, data2));
  auto const accounts3 = af::transpose(af::array(3, 3, data3));

  af::print("First test", max_wealth(accounts));   // 6
  af::print("Second test", max_wealth(accounts2)); // 10
  af::print("Third test", max_wealth(accounts3));  // 17

  return 0;
}
