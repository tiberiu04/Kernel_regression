function L = cholesky(A)
    [n, n] = size(A);
    L = zeros(n);

    for i = 1 : n
        % Loop over each column of L up to the diagonal
        for j = 1 : i - 1
            s = 0;
            % Computing the sum of products for the off-diagonal entries
            for k = 1 : j - 1
                s = s + L(i,k) * L(j,k);
            endfor
            % Using the formula for off-diagonal entries
            L(i,j) = (A(i,j) - s) / L(j,j);
        endfor
        s = 0;
        % Compute the sum of squares for the diagonal entries
        for k = 1 : i - 1
            s = s + L(i,k) * L(i,k);
        endfor
        %Calculating the diagonal entries of L
        L(i,i) = sqrt(A(i,i) - s);
    endfor
endfunction

