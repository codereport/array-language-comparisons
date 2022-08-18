## Creating an [Identity Matrix](https://en.wikipedia.org/wiki/Identity_matrix)

### Summary

||Identity Matrix|
|:-:|:-:|
|APL|`∘.=⍨⍳`|
|J|`e.@i.`|
|BQN|`=⌜˜↕`|
|Q|:soon:|
|Julia|:arrow_down:|
|NumPy|`np.identity(n, int)`|
|R|`diag(n)`|
|Nial|:arrow_down:|
|Futhark|:soon:|
|SaC|:arrow_down:|

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

### Q
:soon:
```sac
TODO
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

% Example usage
     identity(5)
loooo
olooo
ooloo
ooolo
ooool
```

### Futhark
:soon:
```
TODO
```

### SaC
```
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
