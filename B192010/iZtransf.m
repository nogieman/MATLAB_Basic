clc; close all; clear all;

p=input('enter numerator');

m = 0;
z=sym('z')
l = length(p);

for i = 0:l-1
    m = m + p(i+1) * z^(-i);
end
disp (m)
