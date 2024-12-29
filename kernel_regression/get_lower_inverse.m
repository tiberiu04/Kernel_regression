function [P] = get_lower_inverse(L)
    [n, ~] = size(L);
    I = eye(n);

    % Form the augmented matrix by appending the identity matrix I to L
    INVL = [L, I];

    % Performing the Gauss-Jordan elimination
    for j = 1 : n
        INVL(j, :) = INVL(j, :) / INVL(j, j);
        for i = 1 : n
            if i ~= j
                % Subtracting a multiple of the pivot row from current row to make the
                % element at column j of the current row zero
                INVL(i, :) = INVL(i, :) - INVL(i, j) * INVL(j, :);
            endif
        endfor
    endfor

    % Extracting the inverse of L from the augmented matrix
    P = INVL(:, n+1 : end);
endfunction

