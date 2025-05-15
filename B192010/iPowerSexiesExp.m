clc; clear all; close all;

num = input('nume');
den = input('den');

syms z n;

x = 0; y = 0;

for i =1: length(num)
    x = x+num(i) * z^(-i);
end

for i = 1:length(den)
    y = y + den(i) * z^(-i);
end

z = x/y;
disp(z)
disp(x)
disp(y)
