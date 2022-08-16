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

|Language|Main Website|Help Website|
|:-:|:-:|:-:|
|Dyalog APL|https://www.dyalog.com/|https://help.dyalog.com/18.2/|
|J|https://www.jsoftware.com/|https://code.jsoftware.com/wiki/NuVoc|
|BQN|https://mlochbaum.github.io/BQN/|https://mlochbaum.github.io/BQN/doc/index.html|
|Julia|https://julialang.org/|https://docs.julialang.org/en/v1/|
|NumPy|https://numpy.org/|https://numpy.org/doc/stable/|
|R|https://www.r-project.org/|https://www.rdocumentation.org/|

### Comparisons

||APL|J|BQN|Julia|NumPy|R|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Index Base|1 (or `⎕IO`)|0|0|1|0|1|
|Length of Array (Leading Axis)|`≢`|`#`|`≠`|`size(a, 1)`|`len(a)`|`dim(a)[1]`|
|Shape of Array|`⍴`|`$`|`≢`|`size(a)`|`a.shape`|`dim(a)`|
|Number of Elements in Array|`×/⍴`|`*/@$`|`×´≢`|`length(a)`|`a.size`|`length(a)`|

### Other Comparisons

1. [Creating an Identity Matrix](https://github.com/codereport/array-language-comparisons/blob/main/matrix_identity.md)
2. [Creating an Iota Matrix](https://github.com/codereport/array-language-comparisons/blob/main/matrix_iota.md)
