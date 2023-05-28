function I = trap2(x0,xn,n,f)
%Trapezoidal Rule with function
% I=h/2[f(x0)+2{f(x1)+f(x2)......+f(x(n-1)}+f(xn)]
%x0 Lower limit
%xn upper limit
%n number of intervals

h=(xn-x0)/n;
s=f(x0)+f(xn);

for i=1:n-1
    s=s+2*f(x0+i*h);
end

I=h/2*s;
end