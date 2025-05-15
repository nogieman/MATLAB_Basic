clc ;
clear all;
close all;
n=input('enter the n value');
t=-n:n;
a=[zeros(1,n),3,0,4,2];
subplot(2,2,1);
stem(t,a);
b=flip(a);
subplot(2,2,2);
stem(t,b);
even=(a+b)/2;
subplot(2,2,3);
stem(t,even)
odd=(a-b)/2;
subplot(2,2,4);
stem(t,odd)