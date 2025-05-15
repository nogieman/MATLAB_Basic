clc
clear all
close all
xn=[1 2 3]
hn=[-2 1 2 4 5]
l1=length(xn)
l2=length(hn)
sx=max(11,12)
disp('intialising array with zeros')
yn=zeros(1,sx)
disp('displaying elements after circular convolution')
yn=cconv(xn,hn,sx)
stem(yn)