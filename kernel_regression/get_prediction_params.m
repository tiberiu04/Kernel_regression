function [a] = get_prediction_params(K, y, lambda)
    n = size(K, 1);
    A = K + lambda * speye(n);
    L = chol(A);
    z = SIT(L', y);
    a = SST(L, z);
end

function x = SST(A, b)
    [n, ~] = size(A);
    x = zeros(n, 1);

    for i = n:-1:1
        x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
    end
end

function x = SIT(A, b)
    [n, ~] = size(A);
    x = zeros(n, 1);

    for i = 1:n
        x(i) = (b(i) - A(i, 1:i-1) * x(1:i-1)) / A(i, i);
    end
end
