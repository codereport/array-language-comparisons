
#include <matx.h>

auto main() -> int {

  // Original matrix
  auto t = matx::make_tensor<int32_t>({3, 3});
  (t = matx::reshape<t.Rank()>(matx::range<0>({TotalSize(t)}, 1, 1), t.Shape())).run();
  t.Print();

  // Summing by rows
  auto row_sums = matx::make_tensor<int32_t>({3});
  matx::sum(row_sums, t);
  row_sums.Print();

  // Summing by columns
  auto col_sums = matx::make_tensor<int32_t>({3});
  matx::sum(col_sums, matx::transpose(t));
  col_sums.Print();

  // Summing down to scalar
  auto sum = matx::make_tensor<int32_t>();
  matx::sum(sum, t);
  sum.Print();

  return 0;
}
