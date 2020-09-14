function sum = unVectorizedSum(X, theta)
  size = length(X);
  
  sum = 0.0;
  for j= 1:size,
    sum = sum + X(j) * theta(j);
  endfor
  
endfunction
