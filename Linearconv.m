clc; clear all; close all;

x = input('Enter x(n) sequence'); 

h = input('Enter h(n) sequence');

result = linearconvolution(x,h);

disp('linear convolution result:')
disp(result);

subplot(3,1,1), stem(x);
title('x(n) sequence');
xlabel('Time samples');
ylabel('Amp value');

subplot(3,1,2), stem(h);
title('h(n) sequence');
xlabel('Time samples');
ylabel('Amp value');

subplot(3,1,3), stem(result);
title('x(n) convolution with h(n)');
xlabel('Time samples');
ylabel('Amp value');