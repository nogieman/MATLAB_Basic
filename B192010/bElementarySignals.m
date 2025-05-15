close all; clear; clc;
t = -10:.1:10;
M=4;
% unit step,ramp and impulse

us = M-t>=0;
ui = M-t==0;
ur = t.*us;
% exponential signals
n = 0:.1:5;
a = .2;
ex_de = a.^n;
b = 2;
ex_in = b.^n;

% complex exponential signals

cmp_ex_de = ex_de.*exp((1+1j)*-n);
cmp_ex_in = ex_in.*exp((1+1j)*n);

%plotting all the signals
subplot(3,3,1), plot(t,us); title('unit step');
subplot(3,3,2), plot(t,ur); title('unit ramp');
subplot(3,3,3), plot(t,ui); title('unit impulse');


subplot(3,3,4), plot(n,ex_de); title(' exp decaying, 0<=a<=1');
subplot(3,3,5), plot(n,ex_in); title('exp increasing, a>1');


subplot(3,3,6), plot(n,real(cmp_ex_de)); title('cmpx exp. decay');
subplot(3,3,7), plot(n,imag(cmp_ex_de)); title('cmpx exp. decay');
subplot(3,3,8), plot(n,real(cmp_ex_in)); title('cmpx exp. decay');
subplot(3,3,9), plot(n,imag(cmp_ex_in)); title('cmpx exp. decay');



