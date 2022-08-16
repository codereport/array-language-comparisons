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


||Language|Main Website|Help Website|
|:-:|:-:|:-:|:-:|
|:green_heart:|Dyalog APL|https://www.dyalog.com/|https://help.dyalog.com/18.2/|
|:green_heart:|J|https://www.jsoftware.com/|https://code.jsoftware.com/wiki/NuVoc|
|:green_heart:|BQN|https://mlochbaum.github.io/BQN/|https://mlochbaum.github.io/BQN/doc/index.html|
|:green_heart:|Q|https://code.kx.com/q/|https://code.kx.com/q/ref/|
|:blue_heart:|Julia|https://julialang.org/|https://docs.julialang.org/en/v1/|
|:blue_heart:|NumPy*|https://numpy.org/|https://numpy.org/doc/stable/|
|:blue_heart:|R|https://www.r-project.org/|https://www.rdocumentation.org/|
|:purple_heart:|Nial|https://www.nial-array-language.org/|https://www.nial-array-language.org/ndocs/NialDict2.html|
|:purple_heart:|Futhark|https://futhark-lang.org/|https://futhark-lang.org/docs.html|
|:purple_heart:|SaC|https://www.sac-home.org/|https://www.sac-home.org/docs:main|

\* Library, not an actual language
* :green_heart: Main (APL-Family) Array Languages
* :blue_heart: Main (Non-APL-Family) Array Languages
* :purple_heart: Fringe Array Languages

### Comparisons

1. Index Base
2. Length of Array (Leading Axis)
3. Shape of Array
4. Number of Elements in Array

||1|2|3|4
|:-:|:-:|:-:|:-:|:-:|
|APL|1 (or `⎕IO`)|`≢`|`⍴`|`×/⍴`|
|J|0|`#`|`$`|`*/@$`|
|BQN|0|`≠`|`≢`|`×´≢`|
|Q|0|:soon:|:soon:|:soon:|
|Julia|1|`size(a, 1)`|`size(a)`|`length(a)`|
|NumPy|0|`len(a)`|`a.shape`|`a.size`|
|R|1|`dim(a)[1]`|`dim(a)`|`length(a)`|
|Futhark|:soon:|:soon:|:soon:|:soon:|
|SaC|:soon:|:soon:|:soon:|:soon:|

### Other Comparisons

1. [Creating an Identity Matrix](https://github.com/codereport/array-language-comparisons/blob/main/matrix_identity.md)
2. [Creating an Iota Matrix](https://github.com/codereport/array-language-comparisons/blob/main/matrix_iota.md)
3. [Reversing a Matrix Row-wise and Column-wise](https://github.com/codereport/array-language-comparisons/blob/main/matrix_reversing.md)
