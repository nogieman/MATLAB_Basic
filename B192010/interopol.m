function [y,ny]= interopol(x,nx,sf)
sy=nx(2)-nx(1);
ny=min(nx)*(1/sf):sy:max(nx)*(1/sf);
y=zeros(1,length(ny));
j=1;
for i=1:length(x)
    y(j)=x(i);
    j=j+(1/sf);
end
end