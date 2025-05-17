n <- 100
df <- n - 1
y <- rt(n, df)
plot(
  y,
  main = "t-distribution with n-1 degrees of freedom",
  xlab = "t",
  ylab = "Density",
  type = "h"
)

n <- 100
df <- c(2, 10, 25)
print(rchisq(n, df))

x <- seq(-6, 6, length.out = 100)

df_values <- c(1, 4, 10, 30)

t_dist_1 <- dt(x, df = df_values[1])
t_dist_4 <- dt(x, df = df_values[2])
t_dist_10 <- dt(x, df = df_values[3])
t_dist_30 <- dt(x, df = df_values[4])
plot(
  x, t_dist_30,
  type = "l",
  col = "blue",
  lwd = 2,
  main = "Comparison of t-Distributions",
  xlab = "x",
  ylab = "Density"
)

lines(x, t_dist_1, col = "red", lwd = 2, lty = 2)
lines(x, t_dist_4, col = "green", lwd = 2, lty = 3)
lines(x, t_dist_10, col = "purple", lwd = 2, lty = 4)

legend(
  "topright",
  legend = c("df = 1", "df = 4", "df = 10", "df = 30"),
  col = c("red", "green", "purple", "blue"),
  lty = c(2, 3, 4, 1),
  lwd = 2
)

print(qf(0.95, 10, 20))
print(pf(1.5, 10, 20))
print(pf(1.5, 10, 20, lower.tail = FALSE))
print(qf(c(0.25, 0.5, 0.75, 0.999), 10, 20))
y <- rf(1000, 10, 20)
plot(density(y))