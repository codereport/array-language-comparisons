## Summing a Matrix Row-wise, Column-wise and Down to a Scalar

### Summary

|           |           Summing All            |          Summing Columns          |                                              Summing Rows                                              |
| :-------: | :------------------------------: | :-------------------------------: | :----------------------------------------------------------------------------------------------------: |
|    APL    |              `+/,`               |               `+⌿`                |                                             `+/`<br>`+/⍤1`                                             |
|     J     |              `+/&,`              |               `+/`                |                                                 `+/"1`                                                 |
|    BQN    |              `+´⥊`               |               `+˝`                |                                            `+´˘`<br>`+˝⎉1`                                             |
|   Uiua    |              `/+♭`               |               `/+`                |                                                 `≡/+`                                                  |
|     Q     |            `sum raze`            |               `sum`               |                                               `sum each`                                               |
|   Julia   |   `sum(a)`<br>`sum(a, dims=:)`   |         `sum(a, dims=1)`          |                                            `sum(a, dims=2)`                                            |
|  MATLAB   |  `sum(a, 'all')`<br>`sum(a(:))`  |      `sum(a)`<br>`sum(a, 1)`      |                                              `sum(a, 2)`                                               |
|   NumPy   | `np.sum(a)`<br>`np.sum(a, None)` |          `np.sum(a, 0)`           |                                             `np.sum(a, 1)`                                             |
|     R     |             `sum(a)`             |        `apply(sum, 1, a)`         |                                           `apply(sum, 2, a)`                                           |
|   Nial    |              `sum`               |           `BYCOLS sum`            |                                              `BYROWS sum`                                              |
|  Futhark  |      `flatten \|> i32.sum`       |    `transpose \|> map i32.sum`    |                                             `map i32.sum`                                              |
|    Ivy    |              `+/,`               |            `+/ transp`            |                                                  `+/`                                                  |
|    SaC    |             `sum(a)`             | `{ [i] -> sum(transpose(a)[i]) }` |                                         `{ [i] -> sum(a[i]) }`                                         |
| ArrayFire |          `sum(flat(a))`          |      `sum(a)`<br>`sum(a, 0)`      |                                              `sum(a, 1)`                                               |
|   MatX    |          :arrow_right:           |           :arrow_right:           | [Link](https://github.com/codereport/array-language-comparisons/blob/main/code/matx/matrix_summing.cu) |
