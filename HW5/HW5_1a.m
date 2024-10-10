%HW5_1a
function a = HW5_1a(x, n, p)
    C = nchoosek(n, x);
    a = C * (p ^ x) * ((1 - p) ^ (n - x));
end

