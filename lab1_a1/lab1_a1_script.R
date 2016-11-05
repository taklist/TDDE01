# The cost function C.
cost = function(X, Y){
  X_hat = X / sqrt(rowSums(X^2));
  Y_hat = Y / sqrt(rowSums(Y^2));
  return (X_hat %*% t(Y_hat));
}

# Distance to neighboors
dist = function(X, Y){
  c1 = cost(X, Y)
  return (1 - c1);
}

# Every row is message, the attributes of that row
# is the distance to other messages.
distances = dist(test, train)

# Retrieve train values from indexes in vec and
# calculate mean from them.
# Improve by eliminating for-loop somehow.
neighbor_spam_mean = function(vec){
  
}

message_distance = apply(distances, 1, order)
message_distance_k = message_distance[,1:5]
apply(message_distance_k, 1, )

