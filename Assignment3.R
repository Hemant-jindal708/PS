# (1) Probability of getting 7, 8, or 9 sixes in 12 dice rolls
size <- 12
prob <- 1 / 6
p_7_to_9 <- pbinom(9, size, prob) - pbinom(6, size, prob)
cat("P(7 ≤ X ≤ 9) =", p_7_to_9, "\n")

# (2) Probability of scoring 84 or more in a normal distribution
mean_score <- 72
sd_score <- 15.2
p_84_or_more <- 1 - pnorm(84, mean_score, sd_score)
cat("P(score ≥ 84) =", p_84_or_more * 100, "%\n")

# (3) Poisson distribution for car arrivals
lambda <- 5
p_no_car <- dpois(0, lambda)
cat("P(X = 0) =", p_no_car, "\n")

# Probability of 48 ≤ Y ≤ 50 for Y ~ Poisson(λ = 50)
lambda_Y <- 50
p_48_to_50 <- ppois(50, lambda_Y) - ppois(47, lambda_Y)
cat("P(48 ≤ Y ≤ 50) =", p_48_to_50, "\n")

# (4) Hypergeometric distribution for defective processors
total_processors <- 250
defective <- 17
sample_size <- 5
p_x_3 <- dhyper(3, defective, total_processors - defective, sample_size)
cat("P(X = 3) =", p_x_3, "\n")

# (5) Binomial distribution for Wikipedia users
n <- 31
p <- 0.447

# (a) X follows a Binomial distribution: Bin(31, 0.447)
cat("X ~ Binomial(31, 0.447)\n")

# (b) Probability mass function (PMF) plot
x_vals <- 0:n
pmf_vals <- dbinom(x_vals, n, p)
plot(
    x_vals,
    pmf_vals,
    type = "h",
    main = "PMF of X",
    xlab = "X",
    ylab = "P(X=x)"
)

# (c) Cumulative distribution function (CDF) plot
cdf_vals <- pbinom(x_vals, n, p)
plot(
    x_vals,
    cdf_vals,
    type = "s",
    main = "CDF of X",
    xlab = "X",
    ylab = "P(X ≤ x)"
)

# (d) Mean, variance, and standard deviation
mean_X <- n * p
var_X <- n * p * (1 - p)
sd_X <- sqrt(var_X)
cat("Mean =", mean_X, "\n")
cat("Variance =", var_X, "\n")
cat("Standard Deviation =", sd_X, "\n")
