function J = costFunction(X, y, theta)
  
  % X is the "Design Matrix" containing our training examples.
  % y is the class labels
  
  m = size(X, 1); % Number of training examples, the first dimention of X
  predictions = X*theta; % Predictions of hypothesis on all m
  sqrError = (predictions - y).^2; % Element wise square
  
  J = 1/(2*m) * sum(sqrError);
  
endfunction
