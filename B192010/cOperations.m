clc; clear all; close all;

xc = -6.5:.25:6.5;
y1_c = sin(xc);

%%% shifting %%%

% for continous

phi = pi/2;
shift_y1 = sin(xc + phi);
shift_y1e = sin(xc - phi);

subplot(2,2,1), plot(xc,shift_y1,xc,y1_c,'r--'); title('pi/2delayed sine');
xlabel('-6.5< x <6.5');
ylabel('amplitude');

subplot(2,2,2), plot(xc,shift_y1e,xc,y1_c,'r--'); title('pi/2 early sine');
xlabel('-6.5< x <6.5');
ylabel('amplitude');

%for discrete
subplot(2,2,3), stem(xc,shift_y1); title('pi/2 delayed sine');
xlabel('-6.5< x <6.5');
ylabel('amplitude');

subplot(2,2,4), stem(xc,shift_y1e); title('pi/2 early sine');
xlabel('-6.5< x <6.5');
ylabel('amplitude');

%saveas(1,'time_shift.png')






