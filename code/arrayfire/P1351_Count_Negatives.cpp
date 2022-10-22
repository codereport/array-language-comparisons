
#include <arrayfire.h>

auto count_negatives(af::array grid) -> af::array {
  return af::sum(af::flat(0 > grid));
}

auto main() -> int {

  int const data[] = {4, 3, 2, -1, 3, 2, 1, -1, 1, 1, -1, -2, -1, -1, -2, -3};
  auto const grid = af::array(4, 4, data);
  auto const grid2 = af::moddims(af::iota(4), af::dim4(2, 2));

  af::print("First test", count_negatives(grid));   // 8
  af::print("Second test", count_negatives(grid2)); // 0

  return 0;
}
