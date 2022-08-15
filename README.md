This is a collection of idioms and small programs in APL, J, BQN, Julia, R and NumPy.

There are several sites that do these kinds of comparisons:

* [Rosetta Code](http://www.rosettacode.org/wiki/Rosetta_Code)
* [Programming-Idioms](https://programming-idioms.org/)

### Language / Library Websites

|Language|Main Website|Help Website|
|:-:|:-:|:-:|
|Dyalog APL|https://www.dyalog.com/|https://help.dyalog.com/18.2/|
|J|https://www.jsoftware.com/|https://code.jsoftware.com/wiki/NuVoc|
|BQN|https://mlochbaum.github.io/BQN/|https://mlochbaum.github.io/BQN/doc/index.html|
|Julia|https://julialang.org/|https://docs.julialang.org/en/v1/|
|R|https://www.r-project.org/|https://www.rdocumentation.org/|
|NumPy|https://numpy.org/|https://numpy.org/doc/stable/|

### Comparisons

||APL|J|BQN|R|Julia|NumPy|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Length of Array (Leading Axis)|`≢`|`#`|`≠`|`dim(a)[1]`|`size(a, 1)`|`len(a)`|
|Shape of Array|`⍴`|`$`|`≢`|`dim(a)`|`size(a)`|`a.shape`|
|Number of Elements in Array|`×/⍴`|`*/@$`|`×´≢`|`length(a)`|`length(a)`|`a.size`|
