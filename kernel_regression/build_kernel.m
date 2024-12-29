#calculating
function K = build_kernel(X, f, f_param)
    n = size(X, 1);
    K = zeros(n, n);

     %Checking which function should I apply in order to build the kernel matrix
     switch func2str(f)
        case 'linear_kernel'
            for i = 1: n
                for j = 1: n
                    K(i, j) = linear_kernel(X(i, :), X(j, :));
                end
            end
        case 'gaussian_kernel'
            for i = 1 : n
                for j = 1 : n
                    K(i, j) = gaussian_kernel(X(i, :), X(j, :), f_param);
                end
            end
        case 'polynomial_kernel'
            for i = 1 : n
                for j = 1 : n
                    K(i, j) = polynomial_kernel(X(i, :), X(j, :), f_param);
                end
            end
        otherwise
            % Displaying an error message if the specified kernel function is not supported
            error('Invalid kernel function specified.');
    end
end

