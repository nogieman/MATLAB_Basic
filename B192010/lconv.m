function [y] = lconv(x,h)
    lx = length(x);
    lh = length(h);
    
    X = [x zeros(1,lx)];
    H = [h zeros(1,lh)];
    
    for i = 1: (lh+lx-1)
        y(i) = 0;
        for j = 1:lx
            if(i-j+1 > 0)
            y(i) = y(i)+X(j)*H(i-j+1);
            end
        end
     end
end