clc; clear all; close all;

xs = input('Enter sq'); %1:.01:100;
hs = input('Enter another sq'); %sin(xs);

[Co] = convo(xs,hs);

%[cco] = cconvoo(xs,hs);
%cco1 = cconv(xs,hs);

Co1 = conv(xs,hs);

subplot(4,1,1), stem(xs);
title('sequence x(n)');
xlabel('n samples');
ylabel('value');

subplot(4,1,2), stem(hs);
title('sequence h(n)');
xlabel('n samples');
ylabel('value');

subplot(4,1,3), stem(Co,'red');
title('x(n) conv h(n)');
xlabel('n samples');
ylabel('value');

subplot(4,1,4), stem(Co1,'red');
title('x(n) conv h(n) with func.');
xlabel('n samples');
ylabel('value');
saveas(1,'L_Convolution.png');

%{
figure 
subplot(2,1,1), stem(cco);
subplot(2,1,2), stem(cco1);


function [gg] = cconvoo(x,h)
    lx = length(x);
    lh = length(h);
    
    if lx ~= lh
        error('Input sequences must have the same length for circular convolution.');
    end
    m = max(lx,lh);
    X = [x zeros(1, m-lx)];
    H = [h zeros(1, m-lh)];
    gg = zeros(1,m);
    
    for i = 0:m-1
        for j = 0:m-1
            z = mod(i-j,m);
            gg(i+1) = gg(i+1) + x(j+1)*h(z+1);
        end
    end
end
%}

function [y] = lconv(x,h)
    lx = length(x);
    lh = length(h);
    
    X = [ zeros(1,lx) x ];
    H = [zeros(1,lh) h ];
    
    for i = 1: (lh+lx-1)
        y(i) = 0;
        for j = 1:lx
            if(i-j+1 > 0)
            y(i) = y(i)+X(j)*H(i-j+1);
            end
        end
     end
end

