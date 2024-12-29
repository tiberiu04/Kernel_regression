function x = conjugate_gradient(A, b, x_0, tol, max_iter)
    r = b - A * x_0;
    v = r;
    x = x_0;
    tolsquared = tol^2;
    k = 1;

    while k <= max_iter && r' * r > tolsquared
        Av = A * v;
        tk = (r' * r) / (v' * Av);
        x = x + tk * v;
        q = r;
        r = r - tk * Av;
        sk = (r' * r) / (q' * q);
        v = r + sk * v;
        k = k + 1;
    endwhile
endfunction

