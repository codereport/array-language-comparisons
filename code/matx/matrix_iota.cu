
#include <matx.h>

auto main() -> int {

  // Iota Matrix
  auto t = matx::make_tensor<int32_t>({3, 4});
  (t = matx::reshape<t.Rank()>(matx::range<0>({TotalSize(t)}, 1, 1), t.Shape())).run();
  matx::print(t);

  return 0;
}
