
#include <matx.h>

auto main() -> int {

  auto t = matx::make_tensor<int32_t>({3, 3});
  (t = matx::eye(t.Shape())).run();
  t.Print();

  return 0;
}
