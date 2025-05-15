function [gg] = cconvoo(x,h)
    lx = length(x);
    lh = length(h);
    
    if lx ~= lh
        error('Input sequences must have the same length for circular convolution.');
    end
    m = max(lx,lh);
    X = [x zeros(1, m-lx)];
    H = [h zeros(1, m-lh)];
    
    for i = 0:1-m
        for j = 0:1-m
            z = mod(i-j,m);
            z = z+1
            y(i) = y(i) + x(j).*h(z);
        end
    end
end