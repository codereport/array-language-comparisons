# <p align="center">Array Language Comparisons</p>

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

![image](https://user-images.githubusercontent.com/36027403/193055974-8d8008a2-a1e6-4bd4-8ecc-7624fa611f25.png)

This is a collection of idioms and small programs in APL, J, BQN, Julia, R, NumPy, Nial, Futhark & SaC.

There are several sites that do these kinds of comparisons:

#### General

* [Rosetta Code](http://www.rosettacode.org/wiki/Rosetta_Code)
* [Programming-Idioms](https://programming-idioms.org/)

#### Array Language Specific

* [BQN-Dyalog Dictionary](https://mlochbaum.github.io/BQN/doc/fromDyalog.html)
* [BQN-J Dictionary](https://mlochbaum.github.io/BQN/doc/fromJ.html)
* [J-Dyalog APL Rosetta](http://sigapl.org/_J-Dyalog_APL_Rosetta.html)
* [Q-APL Dictionary](https://github.com/codereport/The_Q_Programming_Language/blob/master/Q-Built-in-Functions.md)

### Language / Library Websites


||Language|Main Website|Help / Docs|Online REPL|
|:-:|:-:|:-:|:-:|:-:|
|:green_heart:|Dyalog APL|[dyalog.com](https://www.dyalog.com/)|[Dyalog Help](https://help.dyalog.com/18.2/)|[TryAPL](https://tryapl.org/)|
|:green_heart:|J|[jsoftware.com](https://www.jsoftware.com/)|[J NuVoc](https://code.jsoftware.com/wiki/NuVoc)|[J Playground](https://jsoftware.github.io/j-playground/bin/html2/#)|
|:green_heart:|BQN|[mlochbaum.github.io/BQN](https://mlochbaum.github.io/BQN/)|[BQN Docs](https://mlochbaum.github.io/BQN/doc/index.html)|[BQNPAD](https://bqnpad.mechanize.systems/)|
|:green_heart:|Q|[code.kx.com/q](https://code.kx.com/q/)|[Q Ref](https://code.kx.com/q4m3/A_Built-in_Functions/)|:no_entry_sign:|
|:blue_heart:|Julia|[julialang.org](https://julialang.org/)|[Julia Docs](https://docs.julialang.org/en/v1/)|[Replit](https://julialang.org/learning/tryjulia/)|
|:blue_heart:|NumPy*|[numpy.org](https://numpy.org/)|[NumPy Docs](https://numpy.org/doc/stable/)|[Replit](https://replit.com/languages/python3)|
|:blue_heart:|R|[r-project.org](https://www.r-project.org/)|[R Docs](https://www.rdocumentation.org/)|[JDoodle](https://www.jdoodle.com/execute-r-online/)|
|:purple_heart:|Nial|[nial-array-language.org](https://www.nial-array-language.org/)|[Nial Dictionary](https://www.nial-array-language.org/ndocs/NialDict2.html)|[TIO](https://tio.run/#Nial)|
|:purple_heart:|Futhark|[futhark-lang.org](https://futhark-lang.org/)|[Futhark Docs](https://futhark-lang.org/docs.html)|:no_entry_sign:|
|:purple_heart:|SaC|[sac-home.org](https://www.sac-home.org/)|[SaC Docs](https://www.sac-home.org/docs:main)|:no_entry_sign:|

\* Library, not an actual language
* :green_heart: Main (APL-Family) Array Languages
* :blue_heart: Main (Non-APL-Family) Array Languages
* :purple_heart: Fringe Array Languages

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
5. Length of Array (Leading Axis)
6. Shape of Array
7. Number of Elements in Array

||1|2|3|4|5|6|7
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|APL|:green_heart:|1 (or `⎕IO`)|`LA`/`TA`|`RL`|`≢`|`⍴`|`×/⍴`|
|J|:green_heart:|0|`LA`|`RL`|`#`|`$`|`*/@$`|
|BQN|:green_heart:|0|`LA`|`RL`|`≠`|`≢`|`×´≢`|
|Q|:yellow_heart:|0|:no_entry_sign:|`RL`|`count`|:no_entry_sign:|`count raze`|
|Julia|:green_heart:|1|`AA`|`()`|`size(a, 1)`|`size(a)`|`length(a)`|
|NumPy|:green_heart:|0|`AA`|`()`|`len(a)`|`a.shape`|`a.size`|
|R|:green_heart:|1|`AA`|`()`|`dim(a)[1]`|`dim(a)`|`length(a)`|
|Nial|:yellow_heart:|0|`AA`|`LR`|`first shape`|`shape`|`tally`|
|Futhark|:yellow_heart:|0|:no_entry_sign:|`LR`|`length`|:no_entry_sign:|`flatten \|> length`|
|SaC|:no_entry_sign:|0|`LA`|`()`|`shape(a)[0]`|`shape(a)`|`prod(shape(a))`|

:yellow_heart: Means the REPL has certain limitations
* **Q** REPL has no HOME, END, or any arrows (CTRL or not)
* **Nial** REPL has no CTRL left or right arrow
* **Futhark** REPL has no HOME, END, or DEL

If you are using Q, Nial, Futhark or other languages with REPL limitations, you can get around this by invoking with `rlwrap`. On Linux using the Q REPL:

```
sudo apt install rlwrap
rlwrap taskset -c 0 ./q
```
Note that even when using `rlwrap`, some of the limitations will remain (such as CTRL + arrows).

### Other Comparisons

1. [Creating an Identity Matrix](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/matrix_identity.md)
2. [Creating an Iota Matrix](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/matrix_iota.md)
3. [Reversing a Matrix Row-wise and Column-wise](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/matrix_reversing.md)

### Leetcode Problems

1. :yellow_heart: [P0485 - MCO (Max Consecutive Ones)](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P0485_MCO.md)
2. :green_heart: :video_camera: [P1351 - Count Negatives](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P1351_Count_Negatives.md)
3. :yellow_heart: :video_camera: [P1614 - Maximum Nesting Depth of the Parentheses](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P1614_Max_Paren_Depth.md)
4. :green_heart: :video_camera: [P1672 - Richest Customer Wealth](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P1672_Richest_Customer_Wealth.md)
5. :yellow_heart: [P2319 - Check if Matrix Is X-Matrix](https://github.com/codereport/array-language-comparisons/blob/main/comparisons/leetcode/P2319_Check_Matrix.md)

* :green_heart: = All solutions complete
* :yellow_heart: = Some solutions missing
* :video_camera: = YouTube Video
