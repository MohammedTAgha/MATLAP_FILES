function [x3, e] = mybisec2 (f,a,b,er)
% function [x e] = mybisect (f,a,b,n)
% Does n iterations of the bisection method for a function f
% Inputs : f -- an inline function
% a,b -- left and right edges of the interval/or you can name them x1 & x2
% er -- the needed accuracy.
% Outputs : x -- the estimated solution of f(x) = 0
% e -- an upper bound on the error


format long
% evaluate at the ends and make sure there is a sign change
        if f(a)*f(b) > 0.0
            error ('Function has same sign at both endpoints .')
        end

%  To define the original values of the interval
aa=a;
bb=b;

x3 = (a + b )/2;
n=1; %the number of itterations%%Defined as 1 for the first itteration
e=(b-a)/2^n; %an upper bound on the error for the first iteration

disp ('           x1                  x2                  x3                error')
disp ([a b x3 e])

    while er < e
        if f(x3) == 0.0       % solved the equation exactly
        a = x3;
        b = x3;
        e = 0;
        break             % jumps out of the while loop
        end
% decide which half to keep , so that the signs at the ends differ
        if f(a)*f(x3) < 0
        b=x3;
        else
        a=x3;
        end
        n=n+1;
        e=(bb-aa)/2^n;
        x3=(a+b)/2;
        disp ([a b x3 e])
    end
% set the best estimate for x and the error bound