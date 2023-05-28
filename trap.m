function I = trap(x,y)
%Trapezoidal Rule without function
% I=h/2[f(x0)+2{f(x1)+f(x2)......+f(x(n-1)}+f(xn)]
%x0 Lower limit
%xn upper limit
%n number of intervals

n=length(x);
h=(x(n)-x(1))/(n-1);
s=y(1)+y(n);

for i=2:n-1
    s=s+2*y(i);
end

I=h/2*s;
end