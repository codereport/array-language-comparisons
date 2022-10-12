
#include <arrayfire.h>

auto main() -> int {

  af::array const arr = af::identity(af::dim4(4, 4), s32);
  af::print("Identity Matrix", arr);

  return 0;
}
