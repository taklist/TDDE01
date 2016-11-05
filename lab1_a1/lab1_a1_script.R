# The cost function C.
cost = function(X, Y){
  X_hat = X / sqrt(rowSums(X^2));
  Y_hat = Y / sqrt(rowSums(Y^2));
  return (X %*% t(Y));
}

# Distance to neighboors
dist = function(X, Y){
  return (1 - cost(X, Y));
}

distances = dist(train, test)