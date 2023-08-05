
#include <iostream>
#include <matx.h>

auto print(auto arr) {
  for (auto e : arr)
    std::cout << e << ' ';
  std::cout << '\n';
}

auto main() -> int {

  // auto t = matx::make_tensor<int32_t>({3, 4});
  // (t = matx::range<0>(t.Shape(), 1, 0)).run();
  // t.Print();
  // std::cout << t.Rank() << '\n';
  // print(arr.Shape());

  // auto t1 = matx::make_tensor<float>({100});
  // (t1 = matx::linspace(t1.Shape(), 1.0f, 100.0f)).run();

  // t1.Print();

  // matx::flatten(arr);
  // arr.Print();

  // auto r = matx::range<0>(std::array{3, 4}, 0, 1);
  // // r.Print();

  // // matx::

  matx::print(matx::eye({3, 4}));

  return 0;
}