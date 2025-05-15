clc; clear; close all;
%%% scaling  %%%
x = -5:.1:5;
y = sin(x);
yr = sin(-x);

a = input('Enter amplitude scaling factor');
n  = input('enter time scaling factor');
y1 = a.*sin(n.*x);

subplot(3,2,1), plot(x,y);
title('Original wave');
xlabel(' X ');
ylabel(' Y ');

subplot(3,2,2), plot(x,y1);
title('wave after scaling');
xlabel(' X ');
ylabel(' Y ');

%   reversed wave

subplot(3,2,3), plot(x,y);
title('Original wave');
xlabel(' X ');
ylabel(' Y ');

subplot(3,2,4), plot(x,yr);
title('wave after reversal');
xlabel(' X ');
ylabel(' Y ');

subplot(3,2,5), stem(x,y);
title('Original wave (Disc.)');
xlabel(' X ');
ylabel(' Y ');

subplot(3,2,6), stem(x,yr);
title('Discrete wave after reversal');
xlabel(' X ');
ylabel(' Y ');
saveas(1,'Operations.png')