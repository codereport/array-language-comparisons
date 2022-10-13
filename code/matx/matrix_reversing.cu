
#include <matx.h>

auto main() -> int {

  // Original matrix
  auto t = matx::make_tensor<int32_t>({3, 4});
  (t = matx::reshape<t.Rank()>(matx::range<0>({TotalSize(t)}, 1, 1), t.Shape())).run();
  t.Print();

  // Row reversal
  auto t_row_rev = matx::make_tensor<int32_t>({3, 4});
  (t_row_rev = matx::fliplr(t)).run();
  // (t_row_rev = matx::reverse<1>(t)).run(); <- same as
  t_row_rev.Print();

  // Column reversal
  auto t_col_rev = matx::make_tensor<int32_t>({3, 4});
  (t_col_rev = matx::flipud(t)).run();
  // (t_col_rev = matx::reverse<0>(t)).run(); <- same as
  t_col_rev.Print();

  // Reverse in memory
  auto test = matx::make_tensor<int32_t>({3, 4});
  (test = matx::reshape(matx::reverse<0>(matx::flatten(t)), {3, 4})).run();
  test.Print();

  return 0;
}
