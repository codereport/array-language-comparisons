## Reversing a Matrix Row-wise and Column-wise

### Summary

||Reverse Columns|Reverse Rows|
|:-:|:-:|:-:|
|APL|`⊖`|`⌽` <br> `⊖⍤1`|
|J|`\|.`|`\|."1`|
|BQN|`⌽`|`⌽˘`<br>`⌽⎉1`|
|Q|`reverse`|`flip reverse flip`|
|Julia|`reverse(a, dims=1)`|`reverse(a, dims=2)`|
|NumPy|`np.flipud(a)`|`np.flip(a, 1)` <br> `np.fliplr(a)`|
|R|`apply(a, 1, rev)`|`apply(a, 2, rev)`|
|Nial|`BYCOLS reverse`|`BYROWS reverse`|
|Futhark|`reverse`|`map reverse`|
|SaC|`reverse(a)`|`{ [i] -> reverse(a[i]) }`|

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

### Q
```q
> a: 3 4 # til 12
> a
0 1 2  3 
4 5 6  7 
8 9 10 11
/ Reversing columns
> reverse a
8 9 10 11
4 5 6  7 
0 1 2  3 
/ Reversing rows
> flip reverse flip a
3  2  1 0
7  6  5 4
11 10 9 8
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
### Nial
```nial
     a := 3 4 reshape count 12
1  2  3  4
5  6  7  8
9 10 11 12

     % Reversing columns ;
     BYCOLS reverse a
9 10 11 12
5  6  7  8
1  2  3  4

     % Reversing rows ;
     BYROWS reverse a
 4  3  2 1
 8  7  6 5
12 11 10 9

```

### Futhark
```fut
> def a = unflatten 3 4 (1...12)
> a
[[1i32, 2i32, 3i32, 4i32],
 [5i32, 6i32, 7i32, 8i32],
 [9i32, 10i32, 11i32, 12i32]]
-- Reverse columns
> reverse a
[[9i32, 10i32, 11i32, 12i32],
 [5i32, 6i32, 7i32, 8i32],
 [1i32, 2i32, 3i32, 4i32]]
-- Reverse rows
> map reverse a
[[4i32, 3i32, 2i32, 1i32],
 [8i32, 7i32, 6i32, 5i32],
 [12i32, 11i32, 10i32, 9i32]]
```

### SaC
```
use StdIO: all;
use Array: all;

int main() {
    a = reshape([3,4], iota(12));
    print(a);
    // Reversing columns
    print(reverse(a));
    // Reversing rows
    print({ [i] -> reverse(a[i])});
    return 0;
}

// Outputs
Dimension:  2
Shape    : <  3,  4>
| 0  1  2  3 | 
| 4  5  6  7 | 
| 8  9 10 11 | 

Dimension:  2
Shape    : <  3,  4>
| 8  9 10 11 | 
| 4  5  6  7 | 
| 0  1  2  3 | 

Dimension:  2
Shape    : <  3,  4>
| 3  2  1  0 | 
| 7  6  5  4 | 
|11 10  9  8 | 
```
