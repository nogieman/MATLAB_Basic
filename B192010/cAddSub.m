clc; close all; clear;
%%% Even & odd signals  %%%
X = -4:4;

x = [0 0 0 0 1 4 3 2 1 ];
y = [0 2 3 4 6 0 0 0 0 ];

x1 = flip(x);           %   time reversal
y1 = flip(y);

xe = (x + x1)/2;        %   even part
xo = (x - x1)/2;        %   odd part

subplot(2,1,1), stem(X,xe);
title('Even');
grid;
subplot(2,1,2), stem(X,xo);
title('odd');
grid;

%   Addition

ad = x + y;

%   Reversal

xrev = flip(x);
yrev = flip(y);
figure
subplot(3,1,1), stem(X,xrev);
title('Reversed x');
xlabel('time samples');
ylabel('reversed x');
grid;

subplot(3,1,2), stem(X, yrev);
title('Reversed y');
xlabel('time samples');
ylabel('reversed y');
grid;

subplot(3,1,3), stem(X, ad);
title('Addition of x,y');
xlabel('time samples');
ylabel(' x + y');
grid;

%{
subplot(2,2,1), stem(X,x);
title('original sequence');
subplot(2,2,3), stem(X,x1);
title(' reversed sequence');
subplot(2,2,2), stem(X,y);
title('original sequence');
subplot(2,2,4), stem(X,y1);
title(' reversed sequence');



figure

x2 = -1.*x;
y2 = -1.*y;

subplot(2,2,1), stem(X,x);
title('original sequence');
subplot(2,2,3), stem(X,x2);
title(' reversed sequence');
subplot(2,2,2), stem(X,y);
title('original sequence');
subplot(2,2,4), stem(X,y2);
title(' reversed sequence');

%}


