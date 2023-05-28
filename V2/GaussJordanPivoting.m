function [x] = GaussJordanPivoting(A)
    % Inputs: A -- the augmented matrix
    % Output: x -- the approximate solutions for linear system as a matrix

    format long  % prints more digits

    n = length(A) - 1;  % number of rows

    for j = 1:n
        % Pivoting - finding the maximum element in the column
        [~, maxRow] = max(abs(A(j:n, j)));  % index of the maximum element
        maxRow = maxRow + j - 1;  % adjust the index for the submatrix

        % Swap rows j and maxRow
        A([j, maxRow], :) = A([maxRow, j], :);

        % Make the pivot element equal to 1
        A(j, :) = A(j, :) / A(j, j);

        % Perform row operations to eliminate other elements
        for i = 1:n
            if i ~= j
                A(i, :) = A(i, :) - A(i, j) * A(j, :);
            end
        end
    end

    x = A(:, n+1);
end
