#question 1

print("question 1")
x <- c(0, 1, 2, 3, 4)
px <- c(0.41, 0.37, 0.16, 0.05, 0.01)
z <- sum(x * px)
print(z)
print(weighted.mean(x, px))
print(c(x %*% px))

#question 2
print("question 2")
ft <- function(t) {
    0.1 * exp(-0.1 * t) # nolint
}
px2 <- integrate(function(t) t * ft(t), lower = 0, upper = Inf)$value
print(px2)

#question 3

print("question 3")
x3 <- c(0, 1, 2, 3)
px3 <- c(0.1, 0.2, 0.2, 0.5)
y3 <- (x3 * 12 + (3 - x3) * 2 - 18)
print(sum(y3 * px3))

#question 4

print("question 4")
fx <- function(x) {
  0.5 * exp(-abs(x))
}

first_moment <- integrate(function(t) t * fx(t), lower = 0, upper = 10)$value
second_moment <- integrate(
  function(t) t * t * fx(t),
  lower = 0,
  upper = 10
)$value
print(first_moment)
print(second_moment - first_moment^2)

#question 5

print("question 5")
fx5 <- function(x) {
  0.75 * 0.25^(x - 1)
}
fy5 <- function(x) {
  0.75 * 0.25^(x^.5 - 1)
}
print(fy5(9))
x <- c(1, 2, 3, 4, 5)
pz <- sum(x * fy5(x))
print(pz)
print(pz^2 - sum(x * x * fy5(x)))
