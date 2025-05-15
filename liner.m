clc;
clear all; 
close all;
xn=input("enter the first seq");
l1=length(xn);
hn=input("enter the 2 seq");
l2=length(hn);
m=l1+l2-1;
zn=zeros(l,m);
xn1=[xn,zeros(1,(l2-1)];
hn1=[hn,zeros(1,(l1,-1)];
for i=1:m 
for j=1::
    zn(i)=zn(i)+xn1(j)*hn1(i-j+1):
end
end
disp("linerco")
disp(zn);
n=0:m-1;
stem(n,zn)
conv(xn,hn)