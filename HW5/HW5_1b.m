%hw5_1b
function b = HW5_1b(x, u)   %u = mean
    e = exp(1);
    b = ((e ^ (-u)) * (u ^ x)) / factorial(x);
end
