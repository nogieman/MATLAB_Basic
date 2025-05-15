clc; clear; close all;
fs = 50;        %sampling frequency
ts = 1/fs;      %sampling time
 t = 0:ts:1;
 f = 2;         % freq for the plot
 y = sin(2*pi*f*t);
 y1 = cos(2*pi*f*t);
subplot(2,1,1), plot(t,y)  %analog plot
subplot(2,1,2), plot(t,y1)

 