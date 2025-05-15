 clc; clear; close all;

 %%%  DSC-SC  %%%

 fc = input('Enter carrier frequency');

 tc = 1/(10*fc);
%tc = 1/fc;
  x = 0:tc:1;

carrier = sin(x*fc);

fm = input('Enter message frequency');
%ws = 2*pi*fm;
message = 2*sin(x*fm);

dsbsc = carrier.*message;
figure
subplot(3,1,1), plot(x,carrier); title('Carrier signal');
subplot(3,1,2), plot(x,message); title('Message signal');
subplot(3,1,3), plot(x,dsbsc); title('DSB - supressed carrier');
