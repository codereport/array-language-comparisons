## P1822 - [Sign of the Product of an Array](https://leetcode.com/problems/sign-of-the-product-of-an-array/)

* [YouTube Solution Video](https://www.youtube.com/watch?v=a7CSK7HNEWQ)

### Summary

|           |                   Solution                    |                                                       Link                                                       |
| :-------: | :-------------------------------------------: | :--------------------------------------------------------------------------------------------------------------: |
|    APL    |                     `×/×`                     |                  [Link](https://github.com/codereport/LeetCode/blob/master/0236_Problem_1.apl)                   |
|    Kap    |                     `×/×`                     |                                                                                                                  |
|  TinyAPL  |                    `×⍆⍤×`                     |
|     J     |                     `*/*`                     |                                                                                                                  |
|    BQN    |                     `×´×`                     |                                                                                                                  |
|   Uiua    |                     `/×±`                     |                                                                                                                  |
|     Q     |                `prd signum x`                 |                                                                                                                  |
|   Julia   |              `sign.(x) \|> prod`              |                                                                                                                  |
|  MATLAB   |                `prod(sign(x))`                |                                                                                                                  |
|   NumPy   |             `np.prod(np.sign(x))`             |                                                                                                                  |
|     R     |                `prod(sign(x))`                |                                                                                                                  |
|   Nial    |             `product -[0 <,0 >]`              |                                                                                                                  |
|  Futhark  |      `x \|> map i32.sgn \|> i32.product`      |                                                                                                                  |
|    Ivy    |                  `*/ sgn x`                   |                                                                                                                  |
|    SaC    |          `prod(max(min(x, 1), -1))`           |                                                                                                                  |
| ArrayFire | `af::product(af::max(af::min(x, 1.0), -1.0))` |                                                                                                                  |
|   MatX    |          :arrow_right::arrow_right:           | [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/matx/P1822_Sign_Product_Array.cu) |
