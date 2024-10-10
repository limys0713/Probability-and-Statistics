%hw5_1d
answer = zeros(25,  1 + 9); %row=0-24, 25 rows
for x = 0 : 24
    answer(x + 1, 1) = x;
    real_u = 5.5; %print from 5.5~9.5
    for u = 1 : 9   %5.5~9.5 9 columns
        answer(x + 1, u + 1) = HW5_1b(x, real_u);
        if x == 0 %the first row of each n doesn't have cumulative
            answer(x + 1, u + 1) = answer(x + 1, u + 1);
        else 
            answer(x + 1, u + 1) = answer(x + 1, u + 1) + answer(x, u + 1); %cumulative
            if answer(x, u + 1) == 1  %however if the upper result is already = 1, then the result can only be 1
                answer(x + 1, u + 1) = 1;
            end
        end
        real_u = real_u + 0.5;
    end
end
answer = round(answer, 4);
T = array2table(answer, 'VariableNames', {'r', 'μ = 5.5', '6.0', '6.5', '7.0', '7.5', '8.0', '8.5', '9.0', '9.5'});
disp('Poisson Probability Sums ∑(x=0~r)[p(x;μ)]');   %print title
disp(T);
%save('HW3_1d.mat','answer');