library(pracma)
#Question 1
f <- function(x, y) {
  (2 * (2 * x + 3 * y)) / 5
}

check_density <- integral2(f, 0, 1, 0, 1)$Q
cat(check_density, "\n\n")

g <- function(x) {
  integrate(function(y) f(x, y), 0, 1)$value
}

gx_at_1 <- g(1)
cat("g(1) =", gx_at_1, "\n\n")

h <- function(y) {
  integrate(function(x) f(x, y), 0, 1)$value
}
hy_at_0 <- h(0)
cat("h(0) =", hy_at_0, "\n\n")

fxy <- function(x, y) {
  x * y * f(x, y)
}
expected_value <- integral2(fxy, 0, 1, 0, 1)
cat("E[XY] =", expected_value$Q, "\n")

# Question 2
x_vals <- 0:3
y_vals <- 0:2

f_matrix <- outer(x_vals, y_vals, function(x, y) (x + y) / 30)
dimnames(f_matrix) <- list(x = x_vals, y = y_vals)

print(f_matrix)

total_prob <- sum(f_matrix)
cat("total = ", total_prob, "\n")

gx <- apply(f_matrix, 1, sum)
names(gx) <- paste0("x=", x_vals)
print(gx)

hy <- apply(f_matrix, 2, sum)
names(hy) <- paste0("y=", y_vals)
print(hy)

px0_given_y1 <- gx[1] / hy[2]
print(px0_given_y1)


ex <- sum(x_vals * gx)
ey <- sum(y_vals * hy)
exy <- 0
for (i in 1:4) {
  for (j in 1:3) {
    exy <- exy + x_vals[i] * y_vals[j] * f_matrix[i, j]
  }
}
varx <- sum((x_vals - ex)^2 * gx)
vary <- sum((y_vals - ey)^2 * hy)
covxy <- exy - ex * ey
corrxy <- covxy / (sqrt(varx) * sqrt(vary))
cat("E(x) =", ex, "\n")
cat("E(y) =", ey, "\n")
cat("E(xy) =", exy, "\n")
cat("Var(x) =", varx, "\n")
cat("Var(y) =", vary, "\n")
cat("Cov(x, y) =", covxy, "\n")
cat("Correlation coefficient =", corrxy, "\n")