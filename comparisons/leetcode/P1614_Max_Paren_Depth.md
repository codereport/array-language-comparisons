## P01614 - [Maximum Nesting Depth of the Parentheses](https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/)

### Summary

||Solution|Link|
|:-:|:-:|:-:|
|APL|`maxDepth ← {⌈/+\-⌿'()'∘.=⍵}`|[Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.apl)|
|J|`maxDepth =. {{ >./+/\-/'()'=/y }}`||
|BQN|``MaxDepth ← ⌈´·+`·-˝"()"=⌜⊢`` |[Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.bqn)|
|Q|`maxDepth: { max sums (-) over "()" =/:\: x }`|[Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.q)|
|Julia|:soon:||
|NumPy|:soon:||
|R|:soon:||
|Nial|`MAX ACCUMULATE + BYCOLS - '()' OUTER = x`||
|Futhark|:arrow_right::arrow_right:|[Link](https://github.com/codereport/LeetCode/blob/master/0210_Problem_1.fut)|
|SaC|:soon:||
