function [x] = GaussianPivoting(A)
    % Inputs: A -- the augmented matrix
    % Output: x -- the approximate solutions for linear system as a matrix

    format long  % prints more digits

    n = length(A) - 1;  % number of rows

    for j = 1:(n-1)
        % Pivoting - finding the maximum element in the column
        [~, maxRow] = max(abs(A(j:n, j)));  % index of the maximum element
        maxRow = maxRow + j - 1;  % adjust the index for the submatrix

        % Swap rows j and maxRow
        A([j, maxRow], :) = A([maxRow, j], :);

        for i = (j+1):n
            mult = -A(i, j) / A(j, j);
            for k = j:n+1
                A(i, k) = A(i, k) + mult * A(j, k);
            end
        end
    end

    x = zeros(n, 1);
    x(n) = A(n, n+1) / A(n, n);

    for p = n-1:-1:1
        sum = 0;
        for k = p+1:n
            sum = sum + A(p, k) * x(k);
        end
        x(p) = (A(p, n+1) - sum) / A(p, p);
    end
end
