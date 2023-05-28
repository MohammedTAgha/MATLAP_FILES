function [x, e, n] = mynewton2(f, fd, x0, n)
% Solves f(x) = 0 by performing n steps of Newton's method starting at x0.
% Inputs:  f -- the function, input as an inline function
%          fd -- its derivative, input as an inline function
%          x0 -- starting guess, a number
%          n -- number of iterations
% Outputs: x -- the approximate solution
%          e -- the error in the final approximation
%          n -- the actual number of iterations performed

format long     % prints more digits

e = 1000;       % initial error
x = x0;         % initial approximation
   fprintf('%d\t\t %.10f\t %.10f\t %.10f\n', 0, x, f(x),fd(x));
for iter = 1:n
    x = x - f(x) / fd(x);
    e = abs(f(x));
fprintf('%d\t\t %.10f\t %.10f\t %.10f\n', iter, x, f(x),fd(x));
end

end
