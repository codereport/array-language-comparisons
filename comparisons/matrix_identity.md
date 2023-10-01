## Creating an [Identity Matrix](https://en.wikipedia.org/wiki/Identity_matrix)

### Summary

|           |                                  Identity Matrix                                   |
| :-------: | :--------------------------------------------------------------------------------: |
|    APL    |                                      `∘.=⍨⍳`                                       |
|     J     |                                      `e.@i.`                                       |
|    BQN    |                                       `=⌜˜↕`                                       |
|   Uiua    |                                       `⊞=.⇡`                                       |
|     Q     |                              `{(til x) =/: (til x)}`                               |
|   Julia   |                              :arrow_down::arrow_down:                              |
|  MATLAB   |                                      `eye(n)`                                      |
|   NumPy   | `np.identity(n, int)`<br> `np.equal.outer(np.arange(n), np.arange(n)).astype(int)` |
|     R     |                       `diag(n)` <br> `outer(1:n, 1:n, "==")`                       |
|   Nial    |                              :arrow_down::arrow_down:                              |
|  Futhark  |                              :arrow_down::arrow_down:                              |
|    Ivy    |                               `(iota n) o.== iota n`                               |
|    SaC    |                              :arrow_down::arrow_down:                              |
| ArrayFire |                            `identity(dim4(n, n), s32)`                             |
|   MatX    |                                    :arrow_down:                                    |

### APL
```apl
      Identity ← ∘.=⍨⍳

      ⍝ Example usage
      Identity 5
1 0 0 0 0
0 1 0 0 0
0 0 1 0 0
0 0 0 1 0
0 0 0 0 1
```

### J
Essay on [Identity Matrix in J](https://code.jsoftware.com/wiki/Essays/Identity_Matrix)
```j
   Identity =. e.@i. 
   Identity =. =/~@i. NB. This one is for comparison with APL & BQN

   NB. Example usage
   Identity 5
1 0 0 0 0
0 1 0 0 0
0 0 1 0 0
0 0 0 1 0
0 0 0 0 1
```

### BQN
```bqn
   Identity ← =⌜˜↕

   # Example Usage
   Identity 5
┌─           
╵ 1 0 0 0 0  
  0 1 0 0 0  
  0 0 1 0 0  
  0 0 0 1 0  
  0 0 0 0 1  
            ┘
```

### Uiua
```uiua
   Identity ← ⊞=.⇡

   # Example Usage
   Identity 5
┌─           
╵ 1 0 0 0 0  
  0 1 0 0 0  
  0 0 1 0 0  
  0 0 0 1 0  
  0 0 0 0 1  
            ┘
```

### Q
```q
identity: {(til x) =/: (til x)}

/ Example usage
identity 5
10000b
01000b
00100b
00010b
00001b
```

### Julia
```julia
function identity(n)
    Int.(1:n .== (1:n) |> transpose)
end

# Example usage (in REPL)
julia> identity(5)
5×5 Array{Int32,2}:
 1  0  0  0  0
 0  1  0  0  0
 0  0  1  0  0
 0  0  0  1  0
 0  0  0  0  1
```

### MATB
```
>> eye(5)

ans =

     1     0     0     0     0
     0     1     0     0     0
     0     0     1     0     0
     0     0     0     1     0
     0     0     0     0     1
```

### NumPy
```py
import numpy as np # just use np.identity

# Example usage (in ipython)
In : np.identity(5, int)
Out: 
array([[1, 0, 0, 0, 0],
       [0, 1, 0, 0, 0],
       [0, 0, 1, 0, 0],
       [0, 0, 0, 1, 0],
       [0, 0, 0, 0, 1]])
```

### R
```r
# Example usage (in REPL)
> diag(5)
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    0    0    0    0
[2,]    0    1    0    0    0
[3,]    0    0    1    0    0
[4,]    0    0    0    1    0
[5,]    0    0    0    0    1
```

### Nial
```
identity is op n {
    (count n) OUTER = count n
}

% Example usage ;
     identity(5)
loooo
olooo
ooloo
ooolo
ooool
```

### Futhark
[Outer product](https://futhark-lang.org/examples/outer-product.html) in Futhark.
```fut
def outer_prod op A B = map (\a -> map (\b -> a `op` b) B) A
def identity n = outer_product (==) (iota n) (iota n)

-- Example usage
> identity 5
[[1i32, 0i32, 0i32, 0i32, 0i32],
 [0i32, 1i32, 0i32, 0i32, 0i32],
 [0i32, 0i32, 1i32, 0i32, 0i32],
 [0i32, 0i32, 0i32, 1i32, 0i32],
 [0i32, 0i32, 0i32, 0i32, 1i32]]

```

### Ivy
```
(iota 5) o.== iota 5
1 0 0 0 0
0 1 0 0 0
0 0 1 0 0
0 0 0 1 0
0 0 0 0 1
```

### SaC
```c
use StdIO: all;
use Array: all;

int[.,.] identity(int n) {
    arr = genarray([5, 5], 1);
    return {[i,j] -> where(i == j, arr[[i,j]], 0)};
}

int main() {
    print(identity(5));
    return 0;
}

// Outputs
Dimension:  2
Shape    : <  5,  5>
| 1  0  0  0  0 | 
| 0  1  0  0  0 | 
| 0  0  1  0  0 | 
| 0  0  0  1  0 | 
| 0  0  0  0  1 | 
```

### ArrayFire
```cpp
#include <arrayfire.h>

auto main() -> int {
  af::array const arr = af::identity(af::dim4(4, 4), s32);
  af::print("Identity Matrix", arr);
  return 0;
}

// Outputs
Identity Matrix
[4 4 1 1]
         1          0          0          0 
         0          1          0          0 
         0          0          1          0 
         0          0          0          1 
```

### MatX
```cpp
#include <matx.h>

auto main() -> int {
  auto t = matx::make_tensor<int32_t>({3, 3});
  (t = matx::eye(t.Shape())).run();
  t.Print();
  return 0;
}

// Outputs
Tensor{int32_t} Rank: 2, Sizes:[3, 3], Strides:[3,1]
000000: 1 0 0 
000001: 0 1 0 
000002: 0 0 1 
```
