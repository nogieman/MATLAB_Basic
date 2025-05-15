%linear conv and circular conv
clc;
clear all;
close all;
x=[1 2 3 4];
h=[1 2 1 1];
l1=length(x);
l2=length(h);
l=l1+l2-1;
subplot(2,1,1);
stem(conv(x,h));
subplot(2,1,2);
x=[x,zeros(1,l-l1)];
h=[h,zeros(1,l-l2)];
y=[zeros(1,l)]
for i=1:l
    for j=1:i
        y(i)=y(i)+x(j)*h(i-j+1)
    end
end
stem(y);
