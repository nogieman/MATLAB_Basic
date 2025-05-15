clc; clear all; close all;

xs = input('Enter sequence x(n): '); %1:.01:100;
hs = input('Enter sequence h(n): '); %sin(xs);

[Co] = lconv(xs,hs);
[cco] = cconvo(xs,hs);
cco1 = cconv(xs,hs);

subplot(3,1,1), stem(xs);
title('sequence x(n)');
xlabel('n samples');
ylabel('value');

subplot(3,1,2), stem(hs);
title('sequence h(n)');
xlabel('n samples');
ylabel('value');

subplot(3,1,3), stem(Co,'red');
title('x(n) conv h(n)');
xlabel('n samples');
ylabel('value');

figure 
subplot(2,1,1), stem(cco);
title('Circular Convolution (using cconvo)');

subplot(2,1,2), stem(cco1);
title('Circular Convolution (using cconv)');

function [y] = cconvo(x, h)
    lx = length(x);
    lh = length(h);
    
    if lx ~= lh
        error('Input sequences must have the same length for circular convolution.');
    end
    
    m = lx;
    X = [x zeros(1, m-1)];
    H = [h zeros(1, m-1)];
    y = zeros(1, m);
    
    for i = 1:m
        for j = 1:m
            z = mod(i-j, m);
            if z == 0
                z = m;
            end
            y(i) = y(i) + X(j) * H(z);
        end
    end
end


function [y] = lconv(x,h)
    lx = length(x);
    lh = length(h);
    
    X = [x zeros(1,lx)];
    H = [h zeros(1,lh)];
    y = zeros(1, lx + lh - 1);
    
    for i = 1:(lh+lx-1)
        y(i) = 0;
        for j = 1:lx
            if (i-j+1 > 0)
                y(i) = y(i) + X(j) * H(i-j+1);
            end
        end
    end
end
