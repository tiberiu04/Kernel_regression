function pred = eval_value(x, X, f, f_param, a)
    [n, ~] = size(X);
    pred = 0;

    for i = 1 : n
        kernel_value = 0;
        switch func2str(f)
        case 'linear_kernel'
            kernel_value = linear_kernel(x, X(i, :));
        case 'gaussian_kernel'
            kernel_value = gaussian_kernel(x, X(i, :), f_param);
        case 'polynomial_kernel'
            kernel_value = polynomial_kernel(x, X(i, :), f_param);
        otherwise
            error('Invalid kernel function specified.');
        end
        pred = pred + a(i) * kernel_value;
    endfor
endfunction
