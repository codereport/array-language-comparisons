## Creating an [Identity Matrix](https://en.wikipedia.org/wiki/Identity_matrix)

### Summary

||APL|J|BQN|R|Julia|NumPy|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Identity Matrix|`∘.=⍨⍳`|`e.@i.`|`=⌜˜↕`|`diag(n)`|TLDB|`np.identity(n, int)`|

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