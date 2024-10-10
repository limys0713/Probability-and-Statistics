%HW7_1b
a = HW7_1a(1);
b = HW7_1a(2);
c = HW7_1a(20);

%plot
figure(1)   
histogram(a, 100,'Normalization','pdf');
hold on;
x = linspace(0, 1, 100);
y = normpdf(x, 1/2, sqrt(1/12));
plot(x, y, 'r', 'LineWidth', 1);
hold off;
xlabel('X1');
ylabel('Probability Distribution');
title('Irwin-Hall Distribution (n = 1) vs Normal Distribution');
legend('Irwin-Hall', 'Normal distritbution');

figure(2)   
histogram(b, 100,'Normalization','pdf');
hold on;
x = linspace(0, 2, 100);
y = normpdf(x, 2/2, sqrt(2/12));
plot(x, y, 'r', 'LineWidth', 1);
hold off;
xlabel('X2');
ylabel('Probability Distribution');
title('Irwin-Hall Distribution (n = 2) vs Normal Distribution');
legend('Irwin-Hall', 'Normal distritbution');

figure(3)   
histogram(c, 100,'Normalization','pdf');
hold on;
x = linspace(0, 20, 100);
y = normpdf(x, 20/2, sqrt(20/12));
plot(x, y, 'r', 'LineWidth', 1);
hold off;
xlabel('X3');
ylabel('Probability Distribution');
title('Irwin-Hall Distribution (n = 20) vs Normal Distribution');
legend('Irwin-Hall', 'Normal distritbution');


