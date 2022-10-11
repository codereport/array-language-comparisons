
#include <arrayfire.h>

auto main() -> int {

  af::array const arr = af::transpose(af::iota(af::dim4(4, 3)));
  af::print("Iota Matrix", arr);

  return 0;
}
