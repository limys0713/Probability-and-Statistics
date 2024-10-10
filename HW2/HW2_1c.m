%1c
num_experiment = 10;
num_product = 100000;
w_rate = [0.3 0.45 0.25];
d_rate = [0.02 0.03 0.02];

P_B3_given_A = zeros(1, num_experiment);

for i = 1:num_experiment

    %total production of each machine
    B1_total = round(num_product*w_rate(1));
    B2_total = round(num_product*w_rate(2));
    B3_total = round(num_product*w_rate(3));

    %create the (0s,1s) row vector
    B1_defects = HW2_1a(d_rate(1), B1_total);
    B2_defects = HW2_1a(d_rate(2), B2_total);
    B3_defects = HW2_1a(d_rate(3), B3_total);

    %total number of defectives for each machine
    B1_defective = sum(B1_defects);
    B2_defective = sum(B2_defects);
    B3_defective = sum(B3_defects);

    % calculate P(B3|A) 
    P_B3_given_A(i) = ((B3_defective/B3_total) * w_rate(3)) / (((B1_defective/B1_total) * w_rate(1)) + ((B2_defective/B2_total) * w_rate(2)) + ((B3_defective/B3_total) * w_rate(3)));

end

save('HW2_1c.mat', 'P_B3_given_A');

%disp(P_B3_given_A);
