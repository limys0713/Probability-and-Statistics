%hw5_1e
n = 10000;
p_given = [0.01, 0.1, 0.2, 0.5];

for i = 1 : length(p_given)
    p = p_given(i);
    
    %Binomial distribution
    binomial = binopdf(0 : n, n, p);
    
    %Poisson distribution
    %u = n * p;
    poisson = poisspdf(0 : n, n * p);
    
    %Plot
    figure(i)   %one figure on each condition
    plot(0:n, binomial, 'r');
    hold on;
    plot(0:n, poisson, 'b');
    hold off;
    xlabel('n');
    ylabel('Probability');
    title(sprintf('(n,p) = (%d, %.2f)', n, p_given(i)));
    legend('binomial', 'poisson');
end
%zoom in the answer part
figure(1);
xlim([50 150]);
figure(2);
xlim([500 1500]);
figure(3);
xlim([1500 2500]);
figure(4);
xlim([4500 5500]);

%error
for j = 5:length(p_given) + 4
    figure(j);
    binom_dist = binopdf(0:n, n, p_given(j - 4));
    poiss_dist = poisspdf(0:n, n * p_given(j - 4));
    error = binom_dist - poiss_dist;
    plot(0:n, error, 'b');
    xlabel('n');
    ylabel('Error of probability');
    title(sprintf('errors: (n,p) = (%d, %.2f)', n, p_given(j - 4)));
end

%zoom in the (error) answer part
figure(5);
xlim([50 150]);
figure(6);
xlim([500 1500]);
figure(7);
xlim([1500 2500]);
figure(8);
xlim([4500 5500]);

