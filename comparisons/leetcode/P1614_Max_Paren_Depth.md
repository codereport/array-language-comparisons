## P01614 - [Maximum Nesting Depth of the Parentheses](https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/)

* [YouTube Solution Video](https://www.youtube.com/watch?v=zrOIQEN3Wkk)
* [Follow Up YouTube Solution Video](https://www.youtube.com/watch?v=6-mk6OpcUdM)

### Summary

|           |                    Solution                    |                                     Link                                      |
| :-------: | :--------------------------------------------: | :---------------------------------------------------------------------------: |
|    APL    |         `maxDepth ← {⌈/+\-⌿'()'∘.=⍵}`          | [Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.apl) |
|     J     |      `maxDepth =. {{ >./+/\-/'()'=/y }}`       |                                                                               |
|    BQN    |         ``MaxDepth ← ⌈´·+`·-˝"()"=⌜⊢``         | [Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.bqn) |
|     Q     | `maxDepth: { max sums (-) over "()" =/:\: x }` |  [Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.q)  |
|   Uiua    |           `MaxDepth ← /↥\+/-⊞=")("`            |                                                                               |
|   Julia   |          no row-wise minus reduction           |                                                                               |
|  MATLAB   |                    no scan                     |
|   NumPy   |      limited support for character arrays      |                                                                               |
|     R     |                     :soon:                     |                                                                               |
|   Nial    |   `MAX ACCUMULATE + BYCOLS - '()' OUTER = x`   |                                                                               |
|  Futhark  |           :arrow_right::arrow_right:           | [Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.fut) |
|    Ivy    |            `max/ +\ -/ x o.== "()"`            |                                                                               |
|    SaC    |                     :soon:                     |                                                                               |
| ArrayFire |                     :soon:                     |
|   MatX    |                     :soon:                     |
