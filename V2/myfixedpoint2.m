function [x, e] = myfixedpoint2(f, g, x0, num_iter)
% Solves f(x) = 0 by performing a fixed number of iterations of the fixed-point method starting at x0.
% Inputs:
%   f -- the function, input as an inline
%   g -- the generated function, input as an inline
%   x0 -- starting guess, a number
%   num_iter -- number of iterations
% Outputs:
%   x -- the approximate solution
%   e -- the error at the final iteration
%   n -- the number of iterations performed

format long  % prints more digits

e = 1000;
n = 0;
x = x0;

while n < num_iter
    x = g(x);
    e = abs(f(x));
    n = n + 1;
end

end
