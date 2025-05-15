clc; clear all; close all;

x = input('inib');
%x = sin(2*pi*ts*2); % Example signal
N = length(x);
n = 0:N-1;
X = fft(x);

% Calculate the magnitude and phase spectra

mag_X = abs(X); 
phase_X = angle(X); 

PSD = (1/N) * (mag_X.^2); % Calculate the Power Spectral Density (PSD)

subplot(3, 2, 1);
stem(x);
title('Sequence x(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3, 2, 2);
stem(abs(X));
title('DFT Magnitude of x(n)');
xlabel('k');
ylabel('|X(k)|');

subplot(3, 2, 3);
plot(mag_X);
title('Magnitude Spectrum');
xlabel('k');
ylabel('|X(k)|');

subplot(3, 2, 4);
stem(phase_X);
title('Phase Spectrum');
xlabel('k');
ylabel('Phase (radians)');

subplot(3, 2, [5, 6]);
plot(PSD);
title('Power Spectral Density (PSD)');
xlabel('k');
ylabel('Power');

saveas(1, 'magnpsd.png');