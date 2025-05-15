clc; clear all; close all;

xo = input('Enter a sequence');
ho = input('Enter another sequence');

m = length(xo) + length(ho)-1;

N = max(length(xo),length(ho));

x = [xo zeros(1, N-length(xo))];
h = [ho, zeros(1, N-length(ho))];

xconh = ifft(fft(x) .* fft(h));
xcconh = cconv(x,h, N);
xconvvh = ifft(fft(xo,m) .* fft(ho,m));

subplot(5,1,1), stem(x); title('sequence 3');
subplot(5,1,2), stem(h); title('sequence 2');
subplot(5,1,3), stem(xconh); title('circular convolution using dft');
subplot(5,1,4), stem(xcconh); title('convolution by calling cconv');
subplot(5,1,5), stem(xconvvh); title('Linear conv using dft');

% saveas(1,' ConvUsingDFT.png');