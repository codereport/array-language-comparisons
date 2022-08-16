## Creating an Iota Matrix

### Summary

||APL|J|BQN|Julia|NumPy|R|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Reverse columns|`⊖`|`\|.`|`⌽`|`reverse(a, dims=1)`|`np.flipud(a)`|`apply(a, 1, rev)`|
|Reverse rows|`⌽` <br> `⊖⍤1`|`\|."1`|`⌽⎉1`|`reverse(a, dims=2)`|`np.flip(a, 1)` <br> `np.fliplr(a)`|`apply(a, 2, rev)`|

### APL
```apl
      a ← 3 3⍴⍳9
      a
1 2 3
4 5 6
7 8 9
      
      ⍝ Reversing columns
      ⊖a
7 8 9
4 5 6
1 2 3

      ⍝ Reversing rows
      ⌽a
3 2 1
6 5 4
9 8 7

      ⍝ or
      (⊖⍤1)a
3 2 1
6 5 4
9 8 7
```

### J
```j
   a =. i.3 3
   a
0 1 2
3 4 5
6 7 8
   
   NB. Reversing columns 
   |.a
6 7 8
3 4 5
0 1 2
   
   NB. Reversing rows
   (|."1)a
2 1 0
5 4 3
8 7 6

```

### BQN
```bqn
   a ← 3‿3⥊↕12
   a
┌─       
╵ 0 1 2  
  3 4 5  
  6 7 8  
        ┘
   # Reversing columns
   ⌽a
┌─       
╵ 6 7 8  
  3 4 5  
  0 1 2  
        ┘
   # Reversing rows
   ⌽⎉1 a
┌─       
╵ 2 1 0  
  5 4 3  
  8 7 6  
        ┘
```

### Julia
```julia
julia> a = reshape(1:9, 3, 3) |> permutedims
3×3 Array{Int32,2}:
 1  2  3
 4  5  6
 7  8  9

# Reversing columns
julia> reverse(a, dims=1)
3×3 Array{Int32,2}:
 7  8  9
 4  5  6
 1  2  3

# Reversing rows
julia> reverse(a, dims=2)
3×3 Array{Int32,2}:
 3  2  1
 6  5  4
 9  8  7
```

### NumPy
```py
In [12]: import numpy as np
In [13]: a = np.arange(9).reshape(3,3)
In [14]: a
Out[14]: 
array([[0, 1, 2],
       [3, 4, 5],
       [6, 7, 8]])

# Reversing columns
In [15]: np.flipud(a)
Out[15]: 
array([[6, 7, 8],
       [3, 4, 5],
       [0, 1, 2]])

# Reversing rows
In [16]: np.flip(a, 1)
Out[16]: 
array([[2, 1, 0],
       [5, 4, 3],
       [8, 7, 6]])

# or
In [17]: np.fliplr(a)
Out[17]: 
array([[2, 1, 0],
       [5, 4, 3],
       [8, 7, 6]])
```

### R
```r
> a = matrix(1:9, nrow=3, byrow=TRUE)
> a
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
 
# Reversing columns
> apply(a, 1, rev)
     [,1] [,2] [,3]
[1,]    3    6    9
[2,]    2    5    8
[3,]    1    4    7
 
# Reversing rows
> apply(a, 2, rev)
     [,1] [,2] [,3]
[1,]    7    8    9
[2,]    4    5    6
[3,]    1    2    3
```
