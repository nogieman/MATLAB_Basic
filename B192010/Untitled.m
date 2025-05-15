clc;
clear all;
close all; 
fs=input('enter the sampling frequency');
ts=1/fs;
t=0:ts:1;
x=sin(2*pi*5*t);
nx=-3:1:3;
nh=-2:1:2;
stem(nx)
 xlim([min(nx),min(nh),max(max(nx),max(nh))]);