function [z,Er] = lagrange2(x,y,u,m)
% x         matrix of xi
% y         matrix of yi
% u         the target point
% z         interploate  ploynomial value at u
% m         the (n+1) derivative at specific point
% Er        Upper bound of the error estimation

format long;
n = length(x);
z = 0;
k=1;

for i = 1:n
    product= y(i);
    for j = 1:n
        if j~=i
            product = product*((u-x(j))/(x(i)-x(j)));
        end
    end

    z = z + product;
end

for i = 1:n
    k=(u-x(i))*k;
end

Er=(m/factorial(n)*k);
end