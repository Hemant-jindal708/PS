# question 1
coins <- c(rep("gold", 20), rep("silver", 30), rep("bronzer", 50))
print(sample(coins, 10))
print(sample(c("success", "failure"), 10, replace = TRUE, prob = c(0.9, 0.1)))

# # question 2
birthday_no_match <- function(n) {
  prob <- 1 # Start with probability 1
  for (i in 1:(n - 1)) {
    prob <- prob * (365 - i) / 365
  }
  return(1 - prob)
}

n_values <- c(5, 10, 15, 20, 23, 30, 40, 50)
probabilities <- sapply(n_values, birthday_no_match)

result <- data.frame(n = n_values, Prob_Match = probabilities)
print(result)

# question 3
conditional_probability <- function(p_a_given_b, p_b, p_a) {
  return((p_a_given_b * p_b) / p_a)
}

p_c_given_r <- 0.85
p_r <- 0.2
p_c <- 0.4

p_r_given_c <- conditional_probability(p_c_given_r, p_r, p_c)
print(p_r_given_c)

# question 4
# Load the iris dataset
data(iris)

# (a) Print first few rows of this dataset
cat("First few rows of the iris dataset:\n")
head(iris)

# (b) Find the structure of this dataset
cat("\nStructure of the iris dataset:\n")
str(iris)

# (c) Find the range of sepal length
sepal_length_range <- range(iris$Sepal.Length)
cat("\nRange of Sepal Length:", sepal_length_range, "\n")

# (d) Find the mean of the sepal length
sepal_length_mean <- mean(iris$Sepal.Length)
cat("Mean of Sepal Length:", sepal_length_mean, "\n")

# (e) Find the median of the sepal length
sepal_length_median <- median(iris$Sepal.Length)
cat("Median of Sepal Length:", sepal_length_median, "\n")

# (f) Find the first and third quartiles & interquartile range
sepal_length_quartiles <- quantile(iris$Sepal.Length, probs = c(0.25, 0.75))
sepal_length_iqr <- IQR(iris$Sepal.Length)
cat("First Quartile (Q1):", sepal_length_quartiles[1], "\n")
cat("Third Quartile (Q3):", sepal_length_quartiles[2], "\n")
cat("Interquartile Range (IQR):", sepal_length_iqr, "\n")

# (g) Find standard deviation and variance of sepal length
sepal_length_sd <- sd(iris$Sepal.Length)
sepal_length_var <- var(iris$Sepal.Length)
cat("Standard Deviation of Sepal Length:", sepal_length_sd, "\n")
cat("Variance of Sepal Length:", sepal_length_var, "\n")

# (h) Repeat the above for sepal.width, petal.length, and petal.width
attributes <- c("Sepal.Width", "Petal.Length", "Petal.Width")

for (attr in attributes) {
  cat("\nStatistics for", attr, ":\n")
  cat("Range:", range(iris[[attr]]), "\n")
  cat("Mean:", mean(iris[[attr]]), "\n")
  cat("Median:", median(iris[[attr]]), "\n")
  cat("Q1 and Q3:", quantile(iris[[attr]], probs = c(0.25, 0.75)), "\n")
  cat("IQR:", IQR(iris[[attr]]), "\n")
  cat("Standard Deviation:", sd(iris[[attr]]), "\n")
  cat("Variance:", var(iris[[attr]]), "\n")
}

# (i) Use the built-in summary function on the iris dataset
cat("\nSummary of the iris dataset:\n")
summary(iris)

# question 5
get_mode <- function(v) {
  uniq_vals <- unique(v)
  freq <- tabulate(match(v, uniq_vals))
  mode_val <- uniq_vals[which.max(freq)]
  return(mode_val)
}

data <- c(1, 2, 2, 3, 3, 3, 4, 5)
mode_value <- get_mode(data)
print(mode_value)
