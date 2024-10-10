%given data 
a = [72.2 31.9 26.5 29.1 27.3 8.6 22.3 26.5 20.4 12.8 25.1 19.2 24.1 58.2 68.1 89.2 55.1 9.4 14.5 13.9 20.7 17.9 8.5 55.4 38.1 54.2 21.5 26.2 59.1 43.3];

%question a
fprintf('mean = %.2f(%%)\n', mean(a));  %find mean

%question b
fprintf('median = %.2f(%%)\n',  median(a)); %find median

%question c
%histogram(datas, left edge:gap:right edge);
histogram(a, 5:10:95);
xlabel('Percentage of the families(%)');
ylabel('Relative Frequency');

%question d
fprintf('10%% trimmed mean = %f(%%)\n', trimmean(a, 20));
