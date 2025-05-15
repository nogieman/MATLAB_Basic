clc; close all; clear;
%%% Even & odd signals  %%%

x = -5:.1:5;



y1 = exp(x);   %   original signal
y2 = exp(-x); %   reversed signal

ev = (y1 + y2)/2;       %   even part
od = (y1 - y2)/2;       %   odd part



figure
%   continous time
subplot(2,2,1), plot(x,ev);
title('Even part');
subplot(2,2,2), plot(x,od)
title('odd part');

subplot(2,2,3), plot(x,y1)
title('original wave');

subplot(2,2,4), plot(x,y2)
title('reversed wave');

figure
%   discrete time

subplot(2,2,1), stem(x,ev);
title('Even part');
subplot(2,2,2), stem(x,od)
title('odd part');

subplot(2,2,3), stem(x,y1)
title('original wave');

subplot(2,2,4), stem(x,y2)
title('reversed wave');




