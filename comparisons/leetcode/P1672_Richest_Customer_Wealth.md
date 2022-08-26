## P1672 - [Richest Customer Wealther](https://leetcode.com/problems/richest-customer-wealth/)

* [YouTube Solution Video](https://www.youtube.com/watch?v=MKb4WD6mioE)

### Summary

||Solution|Link|
|:-:|:-:|:-:|
|APL|`⌈/+/`|[Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.apl)|
|J|`[: >./ +/"1`|[Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.ijs)|
|BQN|`⌈´+˝⎉1`|[Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.bqn)|
|Q|`max sum each x`||
|Julia|`sum(x, dims=2) \|> maximum`|[Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.jl)|
|NumPy|`np.max(np.sum(x, axis=1))`||
|R|`max(rowSums(accounts))`|[Link](https://github.com/codereport/LeetCode/blob/master/0217_Problem_1.r)|
|Nial|`max BYROWS sum x`||
|Futhark|`map i32.sum x \|> i32.maximum`||
|SaC|`maxval({ [i] -> sum(x[i])})`||
