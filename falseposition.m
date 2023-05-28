
function [x, e, n] = falseposition(f,x0,x1,tol)
% Solves f(x) = 0 by doing n steps of false position’s method starting at a and b.
% Inputs :      f -- the function , input as an inline
%               a, b -- starting guess , a number
%               tol -- tolerance (Allowed Error)
% Output :      x -- the approximate solution
%               e -- Error
%               n -- number of iteration
format long;
if f(x1)*f(x0) > 0
    error('The inital guess values are in the same side')
end

e = 1000;
n = 0;

while e > tol
    x = x1 - f(x1) *(x1-x0)/ (f(x1)-f(x0));
    e = abs(f(x));
    n = n+1;
    
    if f(x) == 0
        e = 0;
        break 
    end
    
    if f(x)*f(x1) < 0
        x0 = x;
    else
        x1 = x;
    end
    
end

msg = ['The root at x = ' num2str(x) ', error = ' num2str(e) ', number of iteration = ' num2str(n)];
disp(msg)
end