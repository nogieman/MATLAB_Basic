clc;
close all;
clear all;
xn=input('enter the first sequence');
l1=length(xn);
hn=input('enter the second sequence');
l2=length(hn);
m=l1+l2-1;
zn=zeros(1,m);
xn1=[xn,zeros(1,(l2-1))];
hn1=[hn,zeros(1,(l1-1))];
for i=1:m;
    for j=1:i;
        zn(i)=zn(i)+xn1(j)*hn1(i-j+1);
    end
end
    disp('linear convolution output is ');
    disp(zn)
    n=0:m-1;
    stem(n,zn)