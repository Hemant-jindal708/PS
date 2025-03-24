# question 1
a <- punif(45, min = 0, max = 60, lower.tail = FALSE)
print(a)
b <- punif(30, min = 0, max = 60) -
  punif(20, min = 0, max = 60)
print(b)

# question 2
a <- dexp(4, 1 / 3)
print(a)
x <- c(0:5)
y <- dexp(x, 1 / 3)
plot(x = x, y = y, type = "l")
print(pexp(3, 1 / 3))
y1 <- pexp(x, 1 / 3)
plot(x = x, y = y1, type = "l")
x <- rexp(1000, rate = 1 / 3)
plot(density(x))
hist(x)

#question 3
a <- pgamma(1, 2, 1 / 4, lower.tail = FALSE)
print(a)
b <- qgamma(0.7, 2, 1 / 4)
print(b)