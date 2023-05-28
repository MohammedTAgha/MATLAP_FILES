
function [x,e,n] = mysecant( f,x0,x1,tol)
% Solves f(x) = 0 by doing n steps of Secant ’s method starting at x0 and x1.
% Inputs :      f -- the function , input as an inline
%               x0, x1 -- starting guess , a number
%               tol -- tolerance (Allowed Error)
% Output :      x -- the approximate solution
%               e -- Error
%               n -- number of iteration
format short;
e=1000;         
n=0;
% while n<3
while e>tol
    x=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    y=f(x);
 e=abs(y);
 disp([n+1 x0 x1 x y ])
    n=n+1;
    x0=x1;
    x1=x; 
end

msg = ['The root at x = ' num2str(x) ', error = ' num2str(e) ', number of iteration = ' num2str(n)];
disp(msg)
end