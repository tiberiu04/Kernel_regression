function retval = polynomial_kernel(x, y, d)
  retval = power(1 + y * x', d);
endfunction
