function [Y]= convo(x,h)
lx=length(x);
lh=length(h);
X=[x zeros(1,lx)];
H=[h zeros(1,lh)];
for i=1:(lx+lh-1)
    Y(i)=0;
    for j=1:lx
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        end
    end
end
end
