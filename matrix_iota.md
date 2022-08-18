## Creating an Iota Matrix

### Summary

||Iota Matrix|
|:-:|:-:|
|APL|`3 4⍴⍳12`|
|J|`i.3 4`|
|BQN|`3‿4⥊↕12`|
|Q|`3 4 # til 12`|
|Julia|`reshape(1:12, 4, 3) \|> permutedims`|
|NumPy|`np.arange(12).reshape(3,4)`|
|R|`matrix(1:12, nrow=3, byrow=TRUE)`|
|Nial|`3 4 reshape count 12`|
|Futhark|`unflatten 3 4 (1...12)`|
|SaC|`reshape([3,4], iota(12))`|

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

### Q
```q
q) 3 4 # til 12
0 1 2  3 
4 5 6  7 
8 9 10 11
```

### Julia
```julia
julia> reshape(1:12, 4, 3) |> permutedims
3×4 Array{Int32,2}:
 1   2   3   4
 5   6   7   8
 9  10  11  12
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
> matrix(1:12, nrow=3, byrow=TRUE)
     [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12
```

### Nial
```nial
     3 4 reshape count 12
1  2  3  4
5  6  7  8
9 10 11 12
```

### Futhark
```
> unflatten 3 4 (1...12) 
[[1i32, 2i32, 3i32, 4i32],
 [5i32, 6i32, 7i32, 8i32],
 [9i32, 10i32, 11i32, 12i32]]
```

### SaC
```
use StdIO: all;
use Array: all;

int main() {
    print(reshape([3,4], iota(12)));
    return 0;
}

// Outputs
Dimension:  2
Shape    : <  3,  4>
| 0  1  2  3 | 
| 4  5  6  7 | 
| 8  9 10 11 | 
```