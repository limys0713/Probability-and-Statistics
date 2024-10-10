%Homework 2
%1a
%function
function output = HW2_1a(defectiveRate, numProducts)
    expectedDefectiveNum = round(defectiveRate * numProducts);
    defectiveNum = expectedDefectiveNum + randi([-floor(expectedDefectiveNum/10), floor(expectedDefectiveNum/10)], 1);
    output = [ones(1,defectiveNum) zeros(1,numProducts-defectiveNum)];
    output = output(randperm(numProducts));
end

