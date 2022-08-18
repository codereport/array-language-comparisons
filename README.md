This is a collection of idioms and small programs in APL, J, BQN, Julia, R and NumPy.

There are several sites that do these kinds of comparisons:

#### General

* [Rosetta Code](http://www.rosettacode.org/wiki/Rosetta_Code)
* [Programming-Idioms](https://programming-idioms.org/)

#### Array Language Specific

* [BQN-Dyalog Dictionary](https://mlochbaum.github.io/BQN/doc/fromDyalog.html)
* [BQN-J Dictionary](https://mlochbaum.github.io/BQN/doc/fromJ.html)
* [J-Dyalog APL Rosetta](http://sigapl.org/_J-Dyalog_APL_Rosetta.html)

### Language / Library Websites


||Language|Main Website|Help / Docs|Online REPL|
|:-:|:-:|:-:|:-:|:-:|
|:green_heart:|Dyalog APL|[dyalog.com](https://www.dyalog.com/)|[Dyalog Help](https://help.dyalog.com/18.2/)|[TryAPL](https://tryapl.org/)|
|:green_heart:|J|[jsoftware.com](https://www.jsoftware.com/)|[J NuVoc](https://code.jsoftware.com/wiki/NuVoc)|[J Playground](https://jsoftware.github.io/j-playground/bin/html/index.html)|
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
3. Length of Array (Leading Axis)
4. Shape of Array
5. Number of Elements in Array

||1|2|3|4|5
|:-:|:-:|:-:|:-:|:-:|:-:|
|APL|:green_circle:|1 (or `⎕IO`)|`≢`|`⍴`|`×/⍴`|
|J|:green_circle:|0|`#`|`$`|`*/@$`|
|BQN|:green_circle:|0|`≠`|`≢`|`×´≢`|
|Q|:yellow_circle:|0|`count`|:no_entry_sign:|`count raze`|
|Julia|:green_circle:|1|`size(a, 1)`|`size(a)`|`length(a)`|
|NumPy|:green_circle:|0|`len(a)`|`a.shape`|`a.size`|
|R|:green_circle:|1|`dim(a)[1]`|`dim(a)`|`length(a)`|
|Nial|:yellow_circle:|0|`first shape`|`shape`|`tally`|
|Futhark|:yellow_circle:|0|`length`|:no_entry_sign:|`flatten \|> length`|
|SaC|:no_entry_sign:|0|:soon:|`shape(a)`|:soon:|

:yellow_circle: Means the REPL has limitations
* **Q** REPL has no HOME, END, or any arrows (CTRL or not)
* **Nial** REPL has no CTRL left or right arrow
* **Futhark** REPL has no HOME, END, or DEL

If you are using Q, Nial, Futhark or other languages with REPL limitations, you can get around this by invoking with `rlwrap`. On Linux using the Q REPL:

```
sudo apt install rlwrap
rlwrap taskset -c 0 ./q
```

### Other Comparisons

1. [Creating an Identity Matrix](https://github.com/codereport/array-language-comparisons/blob/main/matrix_identity.md)
2. [Creating an Iota Matrix](https://github.com/codereport/array-language-comparisons/blob/main/matrix_iota.md)
3. [Reversing a Matrix Row-wise and Column-wise](https://github.com/codereport/array-language-comparisons/blob/main/matrix_reversing.md)
