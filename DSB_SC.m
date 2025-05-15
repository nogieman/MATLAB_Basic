%%%  DSB- SC  %%

clc; clear all; close all;

%n = input('Enter range.\n');
fc = input('Enter carrier frequency.\n');
fm = input('Enter message frequency.\n');

x = 0: 1/(10*fc) :1;

carrier = sin(x*fc);

message = sin(x*fm);

dsbsc = carrier.*message;

subplot(4,1,1), plot(x,carrier);
title('Carrier signal');
subplot(4,1,2), plot(x,message);
title('Message signal');
subplot(4,1,3), plot(x,dsbsc);
title('DSB-SC signal');

f=fft(dsbsc);
subplot(4,1,4);
plot(x,f);