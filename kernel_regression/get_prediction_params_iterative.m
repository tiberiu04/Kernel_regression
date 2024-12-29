function [a] = get_prediction_params_iterative(K, y, lambda)
  n = size(K, 1);
  I = eye(n);
  A = lambda * I + K;
  y = y * lambda;
  a = zeros(n, 1);
  x0 = zeros(n, 1);
  tol = 1e-6;
  max_iter = 1000;
  a = conjugate_gradient(A, y, x0, tol, max_iter);
endfunction


