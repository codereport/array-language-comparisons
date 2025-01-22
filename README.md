# <p align="center">Array Language & Library Comparisons</p>

<p align="center">
    <a href="https://github.com/codereport/array-language-comparisons/issues" alt="contributions welcome">
        <img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat" /></a>
    <a href="https://lbesson.mit-license.org/" alt="MIT license">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" /></a>        
    <a href="https://github.com/codereport?tab=followers" alt="GitHub followers">
        <img src="https://img.shields.io/github/followers/codereport.svg?style=social&label=Follow" /></a>
    <a href="https://GitHub.com/codereport/array-language-comparisons/stargazers/" alt="GitHub stars">
        <img src="https://img.shields.io/github/stars/codereport/array-language-comparisons.svg?style=social&label=Star" /></a>
    <a href="https://twitter.com/code_report" alt="Twitter">
        <img src="https://img.shields.io/twitter/follow/code_report.svg?style=social&label=@code_report" /></a>
</p>

![image](https://github.com/codereport/array-language-comparisons/assets/36027403/13f7164e-d9ea-4c7c-a211-bd437d51949c)

This is a collection of idioms and small programs in APL, J, BQN, Julia, R, NumPy, Nial, Futhark & SaC.

There are several sites that do these kinds of comparisons:

|                           General                            |                                             Array Language Specific                                              |                                                 Array Library Specific                                                  |
| :----------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------: |
| [Rosetta Code](http://www.rosettacode.org/wiki/Rosetta_Code) |                   [BQN-Dyalog Dictionary](https://mlochbaum.github.io/BQN/doc/fromDyalog.html)                   | [ArrayFire-MATLAB-NumPy](https://github.com/arrayfire/arrayfire-api-cheat-sheet/blob/master/api_equiv_matlab_python.md) |
|    [Programming-Idioms](https://programming-idioms.org/)     |                   [BQN-Dyalog Dictionary](https://mlochbaum.github.io/BQN/doc/fromDyalog.html)                   |        [ArrayFire-Eigen](https://github.com/arrayfire/arrayfire-api-cheat-sheet/blob/master/api_equiv_eigen.md)         |
|                                                              |                       [J-Dyalog APL Rosetta](http://sigapl.org/_J-Dyalog_APL_Rosetta.html)                       |            [ArrayFire-Numpy](https://arrayfire.com/wp-content/uploads/2012/05/Matrix_WP_ArrayFire_2017.pdf)             |
|                                                              | [Q-APL Dictionary](https://github.com/codereport/The_Q_Programming_Language/blob/master/Q-Built-in-Functions.md) |                          [MatX-MATALB-NumPy](https://nvidia.github.io/MatX/matlabpython.html)                           |

### Language / Library Websites

|                            |  Language  | :heavy_dollar_sign: |                                     Main Website                                     |                                 Help / Docs                                 |                             Online REPL                              |
| :------------------------: | :--------: | :-----------------: | :----------------------------------------------------------------------------------: | :-------------------------------------------------------------------------: | :------------------------------------------------------------------: |
|       :green_heart:        | Dyalog APL |                     |                        [dyalog.com](https://www.dyalog.com/)                         |                [Dyalog Help](https://help.dyalog.com/18.2/)                 |                    [TryAPL](https://tryapl.org/)                     |
|       :yellow_heart:       |    Kap     |                     |         [kapdemo.dhsdevelopments.com](https://kapdemo.dhsdevelopments.com/)          |        [Kap Ref](https://kapdemo.dhsdevelopments.com/reference.html)        |  [Kap Interpreter](https://kapdemo.dhsdevelopments.com/clientweb2/)  |
|       :yellow_heart:       |  TinyAPL   |                     |               [tinyapl.rubenverg.com/](https://tinyapl.rubenverg.com/)               |      [TinAPL Primitives](https://tinyapl.rubenverg.com/docs/primitive)      |       [Online REPL](https://tinyapl.rubenverg.com/run/latest/)       |
|       :green_heart:        |     J      |                     |                     [jsoftware.com](https://www.jsoftware.com/)                      |              [J NuVoc](https://code.jsoftware.com/wiki/NuVoc)               | [J Playground](https://jsoftware.github.io/j-playground/bin/html2/#) |
|       :green_heart:        |    BQN     |                     |             [mlochbaum.github.io/BQN](https://mlochbaum.github.io/BQN/)              |         [BQN Docs](https://mlochbaum.github.io/BQN/doc/index.html)          |             [BQNPAD](https://bqnpad.mechanize.systems/)              |
|       :green_heart:        |    Uiua    |                     |                          [uiua.org](https://www.uiua.org/)                           |                   [Uiua Docs](https://www.uiua.org/docs)                    |                 [UiuaPAD](https://www.uiua.org/pad)                  |
|       :green_heart:        |     Q      | :heavy_dollar_sign: |                       [code.kx.com/q](https://code.kx.com/q/)                        |           [Q Ref](https://code.kx.com/q4m3/A_Built-in_Functions/)           |                           :no_entry_sign:                            |
|        :blue_heart:        |   Julia    |                     |                       [julialang.org](https://julialang.org/)                        |               [Julia Docs](https://docs.julialang.org/en/v1/)               |          [Replit](https://julialang.org/learning/tryjulia/)          |
|        :blue_heart:        |   MATLAB   | :heavy_dollar_sign: | [mathworks.com/products/matlab.html](https://www.mathworks.com/products/matlab.html) |            [MATLAB Help](https://www.mathworks.com/help/matlab/)            |                         :heavy_dollar_sign:                          |
|        :blue_heart:        |   NumPy*   |                     |                           [numpy.org](https://numpy.org/)                            |                 [NumPy Docs](https://numpy.org/doc/stable/)                 |            [Replit](https://replit.com/languages/python3)            |
|        :blue_heart:        |     R      |                     |                     [r-project.org](https://www.r-project.org/)                      |                  [R Docs](https://www.rdocumentation.org/)                  |         [JDoodle](https://www.jdoodle.com/execute-r-online/)         |
|       :purple_heart:       |    Nial    |                     |           [nial-array-language.org](https://www.nial-array-language.org/)            | [Nial Dictionary](https://www.nial-array-language.org/ndocs/NialDict2.html) |                     [TIO](https://tio.run/#Nial)                     |
|       :purple_heart:       |  Futhark   |                     |                    [futhark-lang.org](https://futhark-lang.org/)                     |             [Futhark Docs](https://futhark-lang.org/docs.html)              |                           :no_entry_sign:                            |
|       :purple_heart:       |    Dex     |                     |  [github.com/google-research/dex-lang](https://github.com/google-research/dex-lang)  |       [InDex](https://google-research.github.io/dex-lang/index.html)        |                           :no_entry_sign:                            |
|       :purple_heart:       |    Ivy     |                     |            [pkg.go.dev/robpike.io/ivy](https://pkg.go.dev/robpike.io/ivy)            |     [Ivy Docs](https://pkg.go.dev/robpike.io/ivy#section-documentation)     |                           :no_entry_sign:                            |
| :purple_heart::heartpulse: |    SaC     |                     |                      [sac-home.org](https://www.sac-home.org/)                       |               [SaC Docs](https://www.sac-home.org/docs:main)                |                           :no_entry_sign:                            |
|        :heartpulse:        | ArrayFire* |                     |                       [arrayfire.com](https://arrayfire.com/)                        |                [ArrayFire Docs](https://arrayfire.org/docs/)                |                           :no_entry_sign:                            |
|        :heartpulse:        |   MatX*    |                     |          [nvidia.github.io/MatX](https://nvidia.github.io/MatX/index.html)           |                    [MatX API Ref](nvidia.github.io/MatX)                    |                           :no_entry_sign:                            |
|        :heartpulse:        |   ATen*    |                     |                                          -                                           |               [ATen Docs](https://pytorch.org/cppdocs/#aten)                |                           :no_entry_sign:                            |
|        :heartpulse:        |   Eigen*   |                     |                 [eigen.tuxfamily.org](https://eigen.tuxfamily.org/)                  |                [Eigen Dox](https://eigen.tuxfamily.org/dox/)                |                   [Godbolt](https://godbolt.org/)                    |

\* Library, not an actual language
* :green_heart: Main (APL-Family) Array Languages
* :yellow_heart: Fringe (APL-Family) Array Languages
* :blue_heart: Main (Non-APL-Family) Array Languages
* :purple_heart: Fringe / Research Array Languages
* :heartpulse: Array Compiler Backends / Array Libraries

### Comparisons

1. REPL
2. Index Base
3. Axis/Rank Model
   1. `LA` = [Leading Axis](https://aplwiki.com/wiki/Leading_axis_theory)
   2. `TA` = Trailing Axis
   3. `AA` = Axis Agnostic
4. Application Model
   1. `()` = Parentheses
   2. `LR` = Left to Right
   3. `RL` = Right to Left
5. Row-major or Column-Major

|           |        1        |        2        |        3        |   4   |   5    |
| :-------: | :-------------: | :-------------: | :-------------: | :---: | :----: |
|    APL    |  :green_heart:  |  1 (or `⎕IO`)   |    `LA`/`TA`    | `RL`  |  Row   |
|    Kap    |  :green_heart:  |        0        |    `LA`/`TA`    | `RL`  |  Row   |
|     J     |  :green_heart:  |        0        |      `LA`       | `RL`  |  Row   |
|    BQN    |  :green_heart:  |        0        |      `LA`       | `RL`  |  Row   |
|   Uiua    |  :green_heart:  |        0        |      `LA`       | `RL`  |  Row   |
|     Q     | :yellow_heart:  |        0        | :no_entry_sign: | `RL`  |  Row   |
|   Julia   |  :green_heart:  |        1        |      `AA`       | `()`  | Column |
|  MATLAB   |  :green_heart:  |        1        |      `LA`       | `()`  | Column |
|   NumPy   |  :green_heart:  |        0        |      `AA`       | `()`  |  Row   |
|     R     |  :green_heart:  |        1        |      `AA`       | `()`  | Column |
|   Nial    | :yellow_heart:  |        1        |      `AA`       | `LR`  |  Row   |
|  Futhark  | :yellow_heart:  |        0        | :no_entry_sign: | `LR`  |  Row   |
|    Dex    | :yellow_heart:  |        0        |                 | `()`  |        |
|    Ivy    | :yellow_heart:  | 1 (or `origin`) | :no_entry_sign: | `RL`  |  Row   |
|    SaC    | :no_entry_sign: |        0        |      `LA`       | `()`  |  Row   |
| ArrayFire | :no_entry_sign: |        0        |      `LA`       | `()`  | Column |
|   MatX    | :no_entry_sign: |        0        |      `LA`       | `()`  |  Row   |

6. Length of Array (Leading Axis)
7. Shape of Array
8. Rank of Array
9. Number of Elements in Array

|           |       6        |        7        |         8         |          9           |
| :-------: | :------------: | :-------------: | :---------------: | :------------------: |
|    APL    |      `≢`       |       `⍴`       |       `⍴⍴`        |        `×/⍴`         |
|    Kap    |      `≢`       |       `⍴`       |       `⍴⍴`        |        `×/⍴`         |
|     J     |      `#`       |       `$`       |       `$$`        |        `*/@$`        |
|    BQN    |      `≠`       |       `≢`       |       `≢≢`        |        `×´≢`         |
|   Uiua    |      `⧻`       |       `△`       |       `⧻△`        |         `⧻♭`         |
|     Q     |    `count`     | :no_entry_sign: |  :no_entry_sign:  |     `count raze`     |
|   Julia   |  `size(a, 1)`  |    `size(a)`    |    `ndims(a)`     |     `length(a)`      |
|  MATLAB   |  `length(a)`   |    `size(a)`    |     `rank(a)`     |      `numel(a)`      |
|   NumPy   |    `len(a)`    |    `a.shape`    |   `np.ndim(a)`    |       `a.size`       |
|     R     |  `dim(a)[1]`   |    `dim(a)`     | `length(dim(a))`  |     `length(a)`      |
|   Nial    | `first shape`  |     `shape`     |     `valence`     |       `tally`        |
|  Futhark  |    `length`    | :no_entry_sign: |  :no_entry_sign:  | `flatten \|> length` |
|    Dex    |    `size`*     | :no_entry_sign: |  :no_entry_sign:  |                      |
|    Ivy    |  `1 take rho`  |      `rho`      |     `rho rho`     |       `rho ,`        |
|    SaC    | `shape(a)[0]`  |   `shape(a)`    | `shape(shape(a))` |   `prod(shape(a))`   |
| ArrayFire | `a.dims()[0]`  |  `a.dims()`\*   |  `a.numdims()`\*  |    `a.elements()`    |
|   MatX    | `a.Shape()[0]` |   `a.Shape()`   |    `a.Rank()`     |    `TotalSize(a)`    |

:yellow_heart: Means the REPL has certain limitations
* **Q** REPL has no HOME, END, or any arrows (CTRL or not)
* **Nial** REPL has no CTRL left or right arrow
* **Futhark** REPL has no HOME, END, or DEL
* **Dex** REPL as no UP, DOWN and does not work with `rlwrap`

If you are using Q, Nial, Futhark or other languages with REPL limitations, you can get around this by invoking with `rlwrap`. On Linux using the Q REPL:

```
sudo apt install rlwrap
rlwrap taskset -c 2 ./q
```
Note that even when using `rlwrap`, some of the limitations will remain (such as CTRL + arrows).

### Other Comparisons

1. [Creating an Identity Matrix](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/matrix_identity.md)
2. [Creating an Iota Matrix](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/matrix_iota.md)
3. [Reversing a Matrix Row-wise, Column-wise and in Memory](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/matrix_reversing.md)
4. [Summing a Matrix Row-wise, Column-wise and Down to a Scalar](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/matrix_summing.md)

### Leetcode / PWC Problems

|   #   |                | Problem                                                                                                                                                              |                                                    :video_camera:                                                    |
| :---: | :------------: | :------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------: |
|   1   | :yellow_heart: | [P0485 - MCO (Max Consecutive Ones)](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0485_MCO.md)                           |                                                          -                                                           |
|   2   | :green_heart:  | [P1351 - Count Negatives](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P1351_Count_Negatives.md)                          |                           [YouTube Solution](https://www.youtube.com/watch?v=MKb4WD6mioE)                            |
|   3   | :yellow_heart: | [P1614 - Maximum Nesting Depth of the Parentheses](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P1614_Max_Paren_Depth.md) | [YouTube Solution](https://www.youtube.com/watch?v=zrOIQEN3Wkk) \| [II](https://www.youtube.com/watch?v=6-mk6OpcUdM) |
|   4   | :green_heart:  | [P1672 - Richest Customer Wealth](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P1672_Richest_Customer_Wealth.md)          |                           [YouTube Solution](https://www.youtube.com/watch?v=MKb4WD6mioE)                            |
|   5   | :green_heart:  | [P1822 - Sign of the Product of Array](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P1822_Sign_Product_Array.md)          |                           [YouTube Solution](https://www.youtube.com/watch?v=a7CSK7HNEWQ)                            |
|   6   | :yellow_heart: | [P2319 - Check if Matrix Is X-Matrix](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P2319_Check_Matrix.md)                 |                           [YouTube Solution](https://www.youtube.com/watch?v=8ynsN4nJxzU)                            |
|   7   | :yellow_heart: | [P0674 - LCIS (Longest Continuous Increasing Subsequence)](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0674_LCIS.md)    |                                                          -                                                           |
|   8   | :yellow_heart: | [P00064 - Maixmum Gap](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0064_Max_Gap.md)                                     |                                                          -                                                           |
|   9   | :yellow_heart: | [PWC198 P1 - Maximum Gap Count](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/pwc/PWC198_P1_Max_Gap_Count.md)                       |                                                          -                                                           |

* :green_heart: = All solutions complete
* :yellow_heart: = Some solutions missing

#### Progress

| Language  |       1a        |       1b        |       2       |        3        |       4       |       5       |       6       |        7        |       8       |       9       |
| :-------: | :-------------: | :-------------: | :-----------: | :-------------: | :-----------: | :-----------: | :-----------: | :-------------: | :-----------: | :-----------: |
|    APL    |  :green_heart:  | :no_entry_sign: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: |
|    Kap    |  :green_heart:  |  :green_heart:  | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: |
|     J     |  :green_heart:  |  :green_heart:  | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: |
|    BQN    |  :green_heart:  |  :green_heart:  | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: |
|   Uiua    |  :green_heart:  |  :green_heart:  | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: |
|     Q     |  :green_heart:  |  :green_heart:  | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: |
|   Julia   | :no_entry_sign: |  :green_heart:  | :green_heart: | :no_entry_sign: | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|  MATLAB   |     :soon:      | :no_entry_sign: | :green_heart: | :no_entry_sign: | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|   NumPy   |  :green_heart:  |  :green_heart:  | :green_heart: | :no_entry_sign: | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|     R     |     :soon:      |  :green_heart:  | :green_heart: |     :soon:      | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|   Nial    |  :green_heart:  | :no_entry_sign: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|  Futhark  |     :soon:      |  :green_heart:  | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|    Dex    | :no_entry_sign: | :no_entry_sign: | :green_heart: | :no_entry_sign: | :green_heart: | :green_heart: |    :soon:     | :no_entry_sign: |
|    Ivy    | :no_entry_sign: | :no_entry_sign: | :green_heart: |  :green_heart:  | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|    SaC    |     :soon:      |     :soon:      | :green_heart: |     :soon:      | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
| ArrayFire |     :soon:      |     :soon:      | :green_heart: |     :soon:      | :green_heart: | :green_heart: | :green_heart: |     :soon:      |    :soon:     |    :soon:     |
|   MatX    |     :soon:      |     :soon:      | :green_heart: |     :soon:      | :green_heart: | :green_heart: |    :soon:     |     :soon:      |    :soon:     |    :soon:     |
