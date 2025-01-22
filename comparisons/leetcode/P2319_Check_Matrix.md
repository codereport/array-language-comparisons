## P2319 - [Check if Matrix Is X-Matrix](https://leetcode.com/problems/check-if-matrix-is-x-matrix/)

* [YouTube Solution Video](https://www.youtube.com/watch?v=8ynsN4nJxzU)

### Summary

|           |                                   Solution                                    |                                                        Link                                                         |
| :-------: | :---------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------: |
|    APL    |                     `checkMatrix ← {(1⌊⍵)≡(⊖⌈⊢)∘.=⍨⍳≢⍵}`                      |                    [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.apl)                    |
|    Kap    |                       `CheckMatrix ⇐ {(1⌊⍵)≡⌽⍛⌈=⌻⍨⍳≢⍵}`                       |                                                                                                                     |
|  TinyAPL  |                       `checkMatrix ← {(1⌊⍵)≡⊖⊸⌈=⊞⍨⍳≢⍵}`                       |
|     J     |                `checkMatrix =. {{ (1<.y)-:(\|.>.])=/~i.#y }}`                 |                    [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.ijs)                    |
|    BQN    |                       `CheckMatrix ← {(1⌊𝕩)≡⌽⊸⌈=⌜˜↕≠𝕩}`                       |                    [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.bqn)                    |
|   Uiua    |                         `CheckMatrix ← ≅↧1∶↥⇌.⊞=.⇡⧻.`                         |                                                                                                                     |
|     Q     | `checkMatrix: {a: til count x; i: a =/:\: a; m: i \| reverse i; m ~ x <> 0 }` |
|   Julia   |                          :arrow_right::arrow_right:                           |                    [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.jl)                     |
|  MATLAB   |                          :arrow_right::arrow_right:                           |        [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/matlab/checkMatrix.m)         |
|   NumPy   |                          :arrow_right::arrow_right:                           |                    [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.py)                     |
|     R     |                          :arrow_right::arrow_right:                           |                     [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.r)                     |
|   Nial    |                          :arrow_right::arrow_right:                           |                   [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.nial)                    |
|  Futhark  |                          :arrow_right::arrow_right:                           |                    [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.fut)                    |
|    Ivy    |                          :arrow_right::arrow_right:                           |         [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/ivy/checkmatrix.ivy)         |
|    SaC    |                          :arrow_right::arrow_right:                           |                    [Link](https://github.com/codereport/LeetCode/blob/master/0299_Problem_1.sac)                    |
| ArrayFire |                          :arrow_right::arrow_right:                           | [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/arrayfire/P1351_Count_Negatives.cpp) |
|   MatX    |                                    :soon:                                     |                                                       :soon:                                                        |
