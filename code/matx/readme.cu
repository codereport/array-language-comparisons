
#include <iostream>
#include <matx.h>

auto print(auto arr) {
  for (auto e : arr)
    std::cout << e << ' ';
  std::cout << '\n';
}

auto main() -> int {

  auto t = matx::make_tensor<int32_t>({3, 4});
  (t = matx::reshape(matx::range<0>({TotalSize(t)}, 1, 1), {3, 4})).run();
  t.Print();
  std::cout << t.Rank() << '\n';      // Rank
  print(t.Shape());                   // Shape
  std::cout << t.Shape()[0] << '\n';  // Length
  std::cout << TotalSize(t) << '\n';  // Total # of elements   

  return 0;
}
