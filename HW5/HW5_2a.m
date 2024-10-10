x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
f = [4, 6, 7, 8, 8, 11, 7, 6, 5, 3, 6, 12, 10, 7];
f = f / 100;
histogram('BinEdges', 0.5:14.5, 'BinCounts', f, 'Normalization', 'count'); %histogram
ylabel('Probability (f(x))');
xlabel('X');
title('Probability Distribution of X');
xticks(x); %add the respective value to each bars 


