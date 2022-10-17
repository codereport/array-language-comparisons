function res = checkMatrix(grid)
    i = eye(length(grid));
    res = isequal(min(1, grid), max(i, flip(i)));
end