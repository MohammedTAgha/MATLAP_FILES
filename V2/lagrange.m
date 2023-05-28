function [z] = lagrange(x,y,u)
% x matrix of xi
% y matrix of yi
% u the target point
% z interploate  ploynomial value at u

format long;
n = length(x);
z = 0;


for i = 1:n
    % product  lagrange coffiecents
    product= y(i);
    for j = 1:n
        if j~=i
            product = product*((u-x(j))/(x(i)-x(j)));
        end
    end

    z = z + product;
end

end