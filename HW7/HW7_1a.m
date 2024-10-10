%HW7_1a
function result = HW7_1a(n)
result = zeros(1, 1e6);
    for x = 1:n
        samples = rand(1, 1e6); %uniform dist.
        result = result + samples;
    end
end
