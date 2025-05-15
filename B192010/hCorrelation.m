clc; clear all; close all;

x1 = input('Enter a sequence');
x2 = input('Enter another sequence');


cc = xcorr(x1,x2);

subplot(3,1,1), stem(x1);
title('First sequence');
subplot(3,1,2), stem(x2);
title('Second sequence');
subplot(3,1,3), stem(cc);
title(' Correlation between sequences');


saveas(1,'correl.png');