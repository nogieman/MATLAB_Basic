clc;
close all;
clear all;
x=[1 2 3 4];
l=length(x);
y=0;
z=sym('z');
for i=1:l
    y=y+x(i)*z^(-i);
end
disp('displaying');
disp(y);
 