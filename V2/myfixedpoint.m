% Root Finding, Fixed Point Method
function [x, e, n] = myfixedpoint (f,g ,x0 ,tol)
% Solves f(x) = 0 by doing n steps of Newton ’s method starting at x0.
% Inputs :      f -- the function , input as an inline
% Inputs :      g -- the generated function , input as an inline
%               x0 -- starting guess , a number
%               tol -- tolerance (Allowed Error)
% Output :      x -- the approximate solution
%               e -- the error at the final iteration
%               n -- the number of iterations performed


format long     % prints more digits

e = 1000;
n = 0;
x=x0;

while e > tol
    x = g(x);
    e = abs(f(x));
    n = n+1;
end

end