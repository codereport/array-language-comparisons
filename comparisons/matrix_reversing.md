## Reversing a Matrix Row-wise, Column-wise and in Memory

### Summary

||Reverse In Memory|Reverse Columns|Reverse Rows|
|:-:|:-:|:-:|:-:|
|APL|ravel, reverse, reshape|`⊖`|`⌽` <br> `⊖⍤1`|
|J|ravel, reverse, reshape|`\|.`|`\|."1`|
|BQN|`⌽⌾⥊`|`⌽`|`⌽˘`<br>`⌽⎉1`|
|Q|deshape, reverse, reshape|`reverse`|`reverse each`|
|Julia|`reverse(a)` <br> `reverse(a, dims=:)`|`reverse(a, dims=1)`|`reverse(a, dims=2)`|
|MATLAB|`(:)`, reverse, reshape|`flip(a)`<br>`flip(a, 1)`|`flip(a, 2)`|
|NumPy|`np.flip(a)` <br> `np.flip(a, None)`|`np.flip(a, 0)` <br> `np.flipud(a)`|`np.flip(a, 1)` <br> `np.fliplr(a)`|
|R|reverse, reshape|`apply(a, 1, rev)`|`apply(a, 2, rev)`|
|Nial|`reverse`|`BYCOLS reverse` <br> `transpose (1 RANK reverse transpose a)`|`BYROWS reverse` <br> `1 RANK reverse`|
|Futhark|flatten, reverse, reshape|`reverse`|`map reverse`|
|Ivy|ravel, flip, rho|`flip transp`|`transp flip transp`|
|SaC|flatten, reverse, reshape|`reverse(a)`|`{ [i] -> reverse(a[i]) }`|
|ArrayFire|flat, flip, moddims|`flip(a, 0)`|`flip(a, 1)`|
|MatX|flatten, reverse, reshape|:arrow_down::arrow_down:|:arrow_down::arrow_down:|

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
   ⌽˘ a
┌─       
╵ 2 1 0  
  5 4 3  
  8 7 6  
        ┘   
   # or
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

### MATLAB
```
>> m = reshape([1:12], [3 4])

m =

     1     4     7    10
     2     5     8    11
     3     6     9    12

>> flip(m)

ans =

     3     6     9    12
     2     5     8    11
     1     4     7    10

>> flip(m, 2)

ans =

    10     7     4     1
    11     8     5     2
    12     9     6     3
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

### Ivy
```
flip transp m
 4  8 12
 3  7 11
 2  6 10
 1  5  9

transp flip transp m
 4  3  2  1
 8  7  6  5
12 11 10  9
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

### ArrayFire
```cpp
#include <arrayfire.h>

auto main() -> int {

  af::array arr = af::iota(af::dim4(3, 4));
  af::print("Original matrix", arr);
  af::print("Reversing columns",   af::flip(arr, 0));
  af::print("Reversing rows",      af::flip(arr, 1));
  af::print("Reversing in memory", af::moddims(af::flip(af::flat(arr), 0), af::dim4(3, 4)));

  return 0;
}

// Outputs
Original matrix
[3 4 1 1]
    0.0000     3.0000     6.0000     9.0000
    1.0000     4.0000     7.0000    10.0000
    2.0000     5.0000     8.0000    11.0000

Reversing columns
[3 4 1 1]
    2.0000     5.0000     8.0000    11.0000
    1.0000     4.0000     7.0000    10.0000
    0.0000     3.0000     6.0000     9.0000

Reversing rows
[3 4 1 1]
    9.0000     6.0000     3.0000     0.0000
   10.0000     7.0000     4.0000     1.0000
   11.0000     8.0000     5.0000     2.0000

Reversing in memory
[3 4 1 1]
   11.0000     8.0000     5.0000     2.0000
   10.0000     7.0000     4.0000     1.0000
    9.0000     6.0000     3.0000     0.0000
```

### MatX
```cpp

#include <matx.h>

auto main() -> int {

  // Original matrix
  auto t = matx::make_tensor<int32_t>({3, 4});
  (t = matx::reshape<t.Rank()>(matx::range<0>({TotalSize(t)}, 1, 1), t.Shape())).run();
  t.Print();

  // Row reversal
  auto t_row_rev = matx::make_tensor<int32_t>({3, 4});
  (t_row_rev = matx::fliplr(t)).run();
  t_row_rev.Print();

  // Column reversal
  auto t_col_rev = matx::make_tensor<int32_t>({3, 4});
  (t_col_rev = matx::flipud(t)).run();
  t_col_rev.Print();

  // Reverse in memory
  auto test = matx::make_tensor<int32_t>({3, 4});
  (test = matx::reshape(matx::reverse<0>(matx::flatten(t)), {3, 4})).run();
  test.Print();

  return 0;
}

// Outputs
Tensor{int32_t} Rank: 2, Sizes:[3, 4], Strides:[4,1]
000000: 1 2 3 4 
000001: 5 6 7 8 
000002: 9 10 11 12 
Tensor{int32_t} Rank: 2, Sizes:[3, 4], Strides:[4,1]
000000: 4 3 2 1 
000001: 8 7 6 5 
000002: 12 11 10 9 
Tensor{int32_t} Rank: 2, Sizes:[3, 4], Strides:[4,1]
000000: 9 10 11 12 
000001: 5 6 7 8 
000002: 1 2 3 4 
Tensor{int32_t} Rank: 2, Sizes:[3, 4], Strides:[4,1]
000000: 12 11 10 9 
000001: 8 7 6 5 
000002: 4 3 2 1 
```