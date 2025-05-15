clc;
clear all;
close all;
x=[1 2 3 4];
l=length(x);
y=[zeros(1,l)];
    for k=1:l
      for n=1:l
          y(k)=y(k)+x(n)*exp((-2*i*pi*k*n)/l);
      end
    end
subplot(2,1,1)
stem(y)
%idftwithotfunction
z=[zeros(1,l)];
for n=1:l
    for k=1:l
        z(n)=z(n)+((1/l)*(y(k)*exp((1i*pi*2*k*n)/l)))
    end
end
subplot(2,1,2)
stem(z)