## P1351 - [Count Negative Numbers](https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/)

* [YouTube Solution Video](https://www.youtube.com/watch?v=MKb4WD6mioE)

### Summary

||Solution|Link|
|:-:|:-:|:-:|
|APL|`+/0>,`|[Link](https://github.com/codereport/LeetCode/blob/master/0176_Problem_1.apl)|
|J|`[:+/0>,`|[Link](https://github.com/codereport/LeetCode/blob/master/0176_Problem_1.ijs)|
|BQN|`+´0>⥊`||
|Q|`sum raze 0> x`|[Link](https://github.com/codereport/LeetCode/blob/master/0176_Problem_1.q)|
|Julia|`sum(x .< 0)`|[Link](https://github.com/codereport/LeetCode/blob/master/0176_Problem_1.jl)|
|NumPy|`np.sum(np.less(x, 0))`||
|R|`sum(x < 0)`||
|Nial|`sum(x < 0)`||
|Futhark|`flatten \|> map (<0) \|> map to_i32 \|> i32.sum`||
|SaC|`sum(toi(x < 0))`||
|ArrayFire|`sum(flat(0 > grid))`|[Link](https://github.com/codereport/array-language-comparisons/blob/main/code/arrayfire/P1351_Count_Negatives.cpp)|
