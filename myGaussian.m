%Gaussian-Elimination without pivoting
function [x] = myGaussian (A)
% Inputs :      A -- the augmented matrix
% Output :      x -- the approximate solutions for linear system as a matrix

format long     % prints more digits

n = length(A)-1; % number of rows

for j = 1:(n-1)
        for i= (j+1) : n
            mult = -A(i,j)/A(j,j) ;
            for k= j:n+1
                A(i,k) = A(i,k) + mult*A(j,k) ;
            end
        end
end

for p = n:-1:1
    Cons1=0;
    if p == n
        x(p) = A(p,n+1)/A(p,p);
    else
        for k = n:-1:p+1  %%p=1  K=3:2
            Cons2 = A(p,k)*x(k);
            Cons1 = Cons1+Cons2;
        end
        x(p) = (A(p,n+1)-Cons1)/A(p,p);
    end
end
x=x';

end