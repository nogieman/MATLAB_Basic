clc ;
clear all;
close all;
t=0:4
a=[3,3,1,9,7];
subplot(2,2,1);
stem(t,a);
b=[2,4,6,1,3];
subplot(2,2,2);
stem(t,b);
c=a+b;
subplot(2,2,3);
stem(t,c);