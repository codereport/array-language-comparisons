
#include <arrayfire.h>

auto array_sign(af::array nums) -> af::array {
  // wow, wtf ... double is use for "rank polymorphic" dispatch
  return af::product(af::max(af::min(nums, 1.0), -1.0));
}

auto main() -> int {

  int const data[] = {-1, -2, -3, -4, 3, 2, 1};
  int const data2[] = {1, 5, 0, 2, -3};
  int const data3[] = {-1, 1, -1, 1, -1};
  auto const nums = af::array(7, data);
  auto const nums2 = af::array(5, data2);
  auto const nums3 = af::array(5, data3);

  af::print("First test", array_sign(nums));   // 1
  af::print("Second test", array_sign(nums2)); // 0
  af::print("Third test", array_sign(nums3));  // -1

  return 0;
}
