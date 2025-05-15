clc; clear all; close all;

fs = 300;
ts = 0:1/(fs*.5):1;

x1 = sin(10*pi*ts);
y = decimate(x1,2);
y1 = interp(x1,2);

subplot(3,1,1), stem(ts,x1);
title('Original signal');
subplot(3,1,2), stem(y);
title('Decimated');
subplot(3,1,3), stem(y1);
title('Interpolated');

saveas(1, 'interpp.png')