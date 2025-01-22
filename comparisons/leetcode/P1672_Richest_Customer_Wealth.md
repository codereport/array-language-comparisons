## P1672 - [Richest Customer Wealth](https://leetcode.com/problems/richest-customer-wealth/)

* [YouTube Solution Video](https://www.youtube.com/watch?v=MKb4WD6mioE)

### Summary

|           |            Solution             |                                                            Link                                                             |
| :-------: | :-----------------------------: | :-------------------------------------------------------------------------------------------------------------------------: |
|    APL    |             `⌈/+/`              |                        [Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.apl)                        |
|    Kap    |             `⌈/+/`              |                                                                                                                             |
|  TinyAPL  |           `⦅⌈⍆⋄+⍆⍤1⦆`           |
|     J     |          `[: >./ +/"1`          |                        [Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.ijs)                        |
|    BQN    |            `⌈´+˝⎉1`             |                        [Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.bqn)                        |
|   Uiua    |             `/↥≡/+`             |                                                                                                                             |
|     Q     |        `max sum each x`         |                                                                                                                             |
|   Julia   |  `sum(x, dims=2) \|> maximum`   |                        [Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.jl)                         |
|  MATLAB   |        `max(sum(x, 2))`         |             [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/matlab/maxWealth.m)              |
|   NumPy   |   `np.max(np.sum(x, axis=1))`   |                                                                                                                             |
|     R     |        `max(rowSums(x))`        |                         [Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.r)                         |
|   Nial    |       `max BYROWS sum x`        |                                                                                                                             |
|  Futhark  | `map i32.sum x \|> i32.maximum` |                                                                                                                             |
|    Ivy    |           `max/ +/ x`           |                                                                                                                             |
|    SaC    |  `maxval({ [i] -> sum(x[i])})`  |                                                                                                                             |
| ArrayFire |        `max(sum(x, 1))`         | [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/arrayfire/P1672_Richest_Customer_Wealth.cpp) |
|   MatX    |    :arrow_down::arrow_down:     |    [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/matx/P1672_Richest_Customer_Wealth.cu)    |
