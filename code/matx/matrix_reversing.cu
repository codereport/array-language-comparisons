
#include <matx.h>

auto main() -> int {

  // Original matrix
  auto t = matx::make_tensor<int32_t>({3, 4});
  (t = matx::reshape<t.Rank()>(matx::range<0>({TotalSize(t)}, 1, 1), t.Shape())).run();
  matx::print(t);

  // Row reversal
  auto t_row_rev = matx::make_tensor<int32_t>({3, 4});
  (t_row_rev = matx::fliplr(t)).run();
  // (t_row_rev = matx::reverse<1>(t)).run(); <- same as
  matx::print(t_row_rev);

  // Column reversal
  auto t_col_rev = matx::make_tensor<int32_t>({3, 4});
  (t_col_rev = matx::flipud(t)).run();
  // (t_col_rev = matx::reverse<0>(t)).run(); <- same as
  matx::print(t_col_rev);

  // Reverse in memory
  auto test = matx::make_tensor<int32_t>({3, 4});
  (test = matx::reverse<0,1>(t)).run();
  matx::print(test);

  return 0;
}
