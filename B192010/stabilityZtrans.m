clc;
clear all;
close all;
num=input('enter the numerator');
den=input('enter the denominator');
syms z n;
ztr=0;

for i = 1:length(num)
    ztr = ztr + num(i)*z^(-n+1-i);
end

for i = 1:length(den)
    ztr = ztr/den(i)*z^(-n-i+1);
end

disp(ztr)

poles = roots(den);
if all(abs(poles)<1)
    disp('Stable')
else
    disp('unstable');
end