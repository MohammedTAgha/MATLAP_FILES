% Root Finding, Newton Method
function [x, e, n] = mynewton (f, fd ,x0 ,tol)
% Solves f(x) = 0 by doing n steps of Newton ’s method starting at x0.
% Inputs :      f -- the function , input as an inline
%               fd -- it ’s derivative , input as an inline
%               x0 -- starting guess , a number
%               tol -- tolerance (Allowed Error)
% Output :      x -- the approximate solution

format long     % prints more digits

e = 1000;
n = 0;
x=x0;

while e > tol
    x = x - f(x)/ fd(x);
    e = abs(f(x));
    n = n+1;
end

end