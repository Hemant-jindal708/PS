birthday_no_match <- function(n) {
  prob <- 1  # Start with probability 1
  for (i in 1:(n-1)) {
    prob <- prob * (365 - i) / 365 
  }
  return(1- prob)
}

n_values <- c(5, 10, 15, 20, 23, 30, 40, 50)
probabilities <- sapply(n_values, birthday_no_match)

result <- data.frame(n = n_values, Prob_No_Match = probabilities)
print(result)
