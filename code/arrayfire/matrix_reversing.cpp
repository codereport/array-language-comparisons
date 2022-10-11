
#include <arrayfire.h>

auto main() -> int {

  af::array arr = af::iota(af::dim4(3, 4));
  af::print("Original matrix", arr);
  af::print("Reversing columns",   af::flip(arr, 0));
  af::print("Reversing rows",      af::flip(arr, 1));
  af::print("Reversing in memory", af::moddims(af::flip(af::flat(arr), 0), af::dim4(3, 4)));

  return 0;
}
