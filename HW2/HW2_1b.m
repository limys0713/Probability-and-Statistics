%1b
num_experiment = 1000;
num_product = 10000;
rate = 0.02;
defect_count = zeros(1, num_experiment);

%loop 1000 times
for i = 1:num_experiment
    output = HW2_1a(rate, num_product);
    defect_count(i) = sum(output == 1); %sum of vertor element 
end

%save defect_count in .mat
save('HW2_1b.mat', 'defect_count');
%plot relative frequency histogram
histogram(defectCount, 160:5:250, 'Normalization', 'probability');
xlabel('Number of Defective Products in 1000 repetitions');
ylabel('Relative Frequency');