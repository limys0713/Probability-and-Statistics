n = 10^4;

answer = HW5_2b_function(n);

histogram(answer, 'Normalization', 'probability')
xlabel('X')
ylabel('Relative Frequency')
title('Relative Frequency Plot of X')
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
xticks(x); %add the respective value to each bars 