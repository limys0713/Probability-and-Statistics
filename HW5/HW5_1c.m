%hw5_1c
T = cell(1, 7); %create T[1]~T[7]

for n = 1:7
    answer = zeros(n + 1, 1 + 1 + 10); %1+1+9 ： n + r + 0.1 0.2 0.25 0.3 0.4 0.5 0.6 0.7 0.8 0.9
    for x = 0:n
        answer(x + 1, 1) = n;
        answer(x + 1, 2) = x;
       for p = 1:10    
           if p == 3 %for 0.25
               real_p = 0.25;
           else 
               if p <= 2 %for 0.1 0.2%
                    real_p = p/10;
               else %for 0.3~0.9
                    real_p = (p - 1) / 10;
               end
           end
           answer(x + 1, 2 + p) = HW5_1a(x, n, real_p);
           if x == 0 %the first row of each n doesn't have cumulative
               answer(x + 1, 2 + p) = answer(x + 1, 2 + p);
           else  
               
                answer(x + 1, 2 + p) = (answer(x + 1, 2 + p) + answer(x, 2 + p)); %cumulative
                if answer(x, 2 + p) == 1    %however if the upper result is already = 1, then the result can only be 1
                    answer(x + 1, 2 + p) = 1;
                end
           end
       end
    end
    answer = round(answer, 4);
    T{n} = array2table(answer, 'VariableNames', {'n', 'r', 'p = 0.1', '0.2', '0.25', '0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9'});  
end
combined = vertcat(T{1}, T{2}, T{3}, T{4}, T{5}, T{6}, T{7});
disp('Binomial Probability Sums ∑(x=0~r)[b(x;n,p)]');   %print title
disp(combined);