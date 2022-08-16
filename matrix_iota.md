## Creating an Iota Matrix

### Summary

||APL|J|BQN|Julia|NumPy|R|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Iota Matrix|`3 4⍴⍳12`|`i.3 4`|`3‿4⥊↕12`|`reshape(1:12, 3, 4)`|TLDB|`matrix(1:12, nrow=3)`|

### APL
```apl
      3 4⍴⍳12
1  2  3  4
5  6  7  8
9 10 11 12
```

### J
```j
   i.3 4
0 1  2  3
4 5  6  7
8 9 10 11
```

### BQN
```bqn
   3‿4⥊↕12
┌─           
╵ 0 1  2  3  
  4 5  6  7  
  8 9 10 11  
            ┘
```

### Julia
```julia
julia> reshape(1:12, 3, 4)
3×4 reshape(::UnitRange{Int32}, 3, 4) with eltype Int32:
 1  4  7  10
 2  5  8  11
 3  6  9  12
```

### NumPy
```py
In [2]: np.arange(12).reshape(3,4)
Out[2]: 
array([[ 0,  1,  2,  3],
       [ 4,  5,  6,  7],
       [ 8,  9, 10, 11]])
```

### R
```r
> matrix(1:12, nrow=3)
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
```
