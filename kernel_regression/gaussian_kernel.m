function retval = gaussian_kernel(x, y, sigma)
  norm_diff = (x - y) * (x' - y');
  sigma_squared = sigma * sigma;
  exponent = -norm_diff / (2 * sigma_squared);
  retval = exp(exponent);
endfunction
