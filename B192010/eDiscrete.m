clc; clear; close all;

x = input('enter a sequence');
o = input('Enter a start point');
t = o:length(x) +o -1;

sh = input('Enter shift value');

no = o - sh;
nt = no:length(x) + no -1;
rt = -t;
subplot(3,1,1), stem(t,x);
title('Original sequence');

subplot(3,1,2), stem(nt,x);
title('Shifted sequence');

subplot(3,1,3), stem(rt,x);
title('Time-reversed signal');
