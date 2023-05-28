function [x] = GaussJordanPivoting(A)
% Inputs :      A -- the augmented matrix
% Output :      x -- the approximate solutions for the linear system as a matrix

format long     % prints more digits

n = length(A)-1; % number of rows

for j = 1:n
    % Pivot selection
    [~, pivot_row] = max(abs(A(j:n,j)));  % Find the row with the maximum absolute value in the current column
    pivot_row = pivot_row + j - 1;  % Adjust the row index for the submatrix

    % Row interchange
    temp = A(j,:);
    A(j,:) = A(pivot_row,:);
    A(pivot_row,:) = temp;

    % Row scaling
    A(j,:) = A(j,:) / A(j,j);

    % Row elimination
    for i = 1:n
        if i ~= j
            A(i,:) = A(i,:) - A(i,j) * A(j,:);
        end
    end
end

x = A(:,end);  % Extract the last column as the solutions vector

end
