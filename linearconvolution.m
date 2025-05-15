function result = linearconvolution(x,h)
    n = length(x);
    m = length(h);
    resultlength = n+m-1;
    
    xpadded = [x zeros(1,resultlength-n)];
    hpadded = [h, zeros(1,resultlength-m)];
    
    X = fft(xpadded);
    H = fft(hpadded);
    
    y = X.*H;
    
    result = ifft(y);
end