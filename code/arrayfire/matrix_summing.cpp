
#include <arrayfire.h>

auto main() -> int {

  af::array arr = af::iota(af::dim4(3, 3));
  af::print("Original matrix", arr);
  af::print("Summing columns", af::sum(arr));
  af::print("Summing rows",    af::sum(arr, 1));
  af::print("Summing all",     af::sum(af::flat(arr)));

  return 0;
}
