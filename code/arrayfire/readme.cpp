
#include <iostream> // for dim4 printing

#include <arrayfire.h>

auto main() -> int {

  af::array const a = af::transpose(af::iota(af::dim4(4, 3, 1)));
  std::cout << "Shape*         :: " << a.dims() << '\n';
  std::cout << "# of Elements  :: " << a.elements() << '\n';
  std::cout << "Rank*          :: " << a.numdims() << '\n';
  std::cout << "Length         :: " << a.dims()[0] << '\n';

  return 0;
}
