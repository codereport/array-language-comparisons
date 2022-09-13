## P2319 - [Check if Matrix Is X-Matrix](https://leetcode.com/problems/check-if-matrix-is-x-matrix/)

### Summary

||Solution|Link|
|:-:|:-:|:-:|
|APL|`checkMatrix ← {(1⌊⍵)≡(⊖⌈⊢)∘.=⍨⍳≢⍵}`|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.apl)|
|J|`checkMatrix =. {{ (1<.y)-:(\|.>.])=/~i.#y }}`|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.ijs)|
|BQN|`CheckMatrix ← {(1⌊𝕩)≡⌽⊸⌈=⌜˜↕≠𝕩}`|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.bqn)|
|Q|`checkMatrix: {a: til count x; i: a =/:\: a; m: i \| reverse i; m ~ x <> 0 }`|
|Julia|:arrow_right::arrow_right:|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.jl)|
|NumPy|:arrow_right::arrow_right:|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.py)|
|R|:arrow_right::arrow_right:|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.r)|
|Nial|:arrow_right::arrow_right:|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.nial)|
|Futhark|:soon:|
|SaC|:arrow_right::arrow_right:|[Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.sac)|
