
#include <arrayfire.h>

auto check_matrix(af::array matrix) -> af::array {
  auto i = af::identity(matrix.dims());
  auto x = af::max(i, af::flip(i, 0));
  // wow, wtf ... double is use for "rank polymorphic" dispatch
  return af::allTrue(af::flat(x == af::min(matrix, 1.0)));
}

auto main() -> int {

  int const data[] = {2, 0, 0, 1, 0, 3, 1, 0, 0, 5, 2, 0, 4, 0, 0, 2};
  int const data2[] = {5, 7, 0, 0, 3, 1, 0, 5, 0};
  auto const grid = af::array(4, 4, data);
  auto const grid2 = af::array(3, 3, data2);

  af::print("First test", check_matrix(grid));   // 1
  af::print("Second test", check_matrix(grid2)); // 0

  return 0;
}
