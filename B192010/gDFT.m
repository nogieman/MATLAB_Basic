  clc; clear all; close all;
  
 x = [1:9 0];         %x value
 N = length(x);
 
 ft = discft(x,N);    %declaring
 r = 0;

 xcall = fft(x);
 invx = ifft(ft); 
 invvx = idiscft(x,N);
 
 subplot(2,2,1), stem(x); title('Original sequence');
 subplot(2,2,4), stem(ft); title('DFT using formula');
 subplot(2,2,3), stem(xcall); title('DFT by calling fft function');
 subplot(2,2,2), stem(invx); title(' IDFT of obtained DFT sequence');
 %saveas(1,'DFT.png');
 
 figure
 stem(invvx)
 
 
 function [ffft] = discft(x,N)
     for k = 0:N-1
         r = 0;
         for n = 0:N-1
             r = r + x(n+1)*exp(-2*1i*pi*k*n/N);
         end
         ffft(k+1) = r;
     
     end
 end 
 
  function [ffft] = idiscft(x,N)
     for k = 0:N-1
         r = 0;
         for n = 0:N-1
             r = r + x(n+1)*exp(2*1i*pi*k*n/N);
         end
         r = r/N;
         ffft(k+1) = r;
     
     end
 end 
