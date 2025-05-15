%{
x = 0:50;
y = 15:20;
z = fft(y,N);
N = max(length(x),length(y));
c = fft(x,N);
subplot(4,1,3), plot(z);
subplot(4,1,1), plot(x);
subplot(4,1,2), plot(y);
subplot(4,1,4), plot(c);
V = c.*z;
v = ifft(V);

figure
plot(v);
%}
x = input('Enter a sequence');
o = input('Enter the starting point of sequence');
t = o:length(x) +o -1;

plot(t,x)