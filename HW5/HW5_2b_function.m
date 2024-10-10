function b = HW5_2b_function(n)
    x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
    f = [4, 6, 7, 8, 8, 11, 7, 6, 5, 3, 6, 12, 10, 7];
    b = randsample(x, n, true, f);
end
