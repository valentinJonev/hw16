1;
x = [];
load('noisyData.mat', 'x');

figure;
plot(1:size(sm_filter(x, 5), 2), x, '.',1:size(sm_filter(x, 5), 2) , sm_filter(x, 5), 'r');
legend('Original Data', 'Smoothed');
xlabel('Index');
title('Smoothing Illustration');
ylabel('Data Value');
