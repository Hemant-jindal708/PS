# #question 1
# clt_data <- read.csv("Clt-data.csv")
# print(head(clt_data, 10))
# print(paste("Number of rows:", nrow(clt_data)))
# print(paste("Number of columns:", ncol(clt_data)))
# mean_data <- mean(clt_data$Wall_Thickness)
# print(mean)
# # hist(
# #   clt_data$Wall_Thickness,
# #   main = "Histogram of Wall Thickness",
# #   xlab = "Wall Thickness",
# #   ylab = "Frequency",
# #   col = "lightblue",
# #   border = "black",
# # )
# # abline(v = mean_data, col = "red")

# y <- replicate(1000, mean(sample(clt_data$Wall_Thickness, 10, replace = TRUE)))
# print(mean(y))
# hist(
#     y,
#     main = "Histogram of Sampled Wall Thickness",
#     xlab = "Wall Thickness",
#     ylab = "Frequency",
#     col = "lightgreen",
#     border = "black"
# )
# abline(v = mean(y), col = "red")

# y <- replicate(1000, mean(sample(clt_data$Wall_Thickness, 50, replace = TRUE)))
# print(mean(y))
# hist(
#     y,
#     main = "Histogram of Sampled Wall Thickness",
#     xlab = "Wall Thickness",
#     ylab = "Frequency",
#     col = "lightgreen",
#     border = "black"
# )
# abline(v = mean(y), col = "red")

# y <- replicate(1000, mean(sample(clt_data$Wall_Thickness, 500, replace = TRUE)))
# print(mean(y))
# hist(
#     y,
#     main = "Histogram of Sampled Wall Thickness",
#     xlab = "Wall Thickness",
#     ylab = "Frequency",
#     col = "lightgreen",
#     border = "black"
# )
# abline(v = mean(y), col = "red")

# y <- replicate(
#     1000,
#     mean(sample(clt_data$Wall_Thickness, 9000, replace = TRUE))
# )
# print(mean(y))
# hist(
#     y,
#     main = "Histogram of Sampled Wall Thickness",
#     xlab = "Wall Thickness",
#     ylab = "Frequency",
#     col = "lightgreen",
#     border = "black"
# )
# abline(v = mean(y), col = "red")

# #question 2
# age <- c(58, 69, 43, 39, 63, 52, 47, 31, 74, 36)
# colestrol <- c(189, 235, 193, 177, 154, 191, 213, 165, 198, 181)
# model <- lm(colestrol ~ age)
# c <- coef(model)[1]
# m <- coef(model)[2]
# y <- c + m * 60
# print(y)
# plot(
#     colestrol ~ age,
#     main = "Age vs Cholesterol",
#     xlab = "Cholesterol",
#     ylab = "Age",
#     pch = 19,
# )
# abline(lm(colestrol ~ age), col = "red")
# print(paste("Slope:", m))
# print(paste("Intercept:", c))

#question 3
library("BSDA")
before <- c(145, 173, 158, 141, 167, 159, 154, 167, 145, 153)
after <- c(155, 167, 156, 149, 168, 162, 158, 169, 157, 161)

print(t.test(
    after,
    before,
    conf.level = 0.95,
    paired = TRUE,
    alternative = "greater"
))
print(z.test(
    after,
    before,
    conf.level = 0.95,
    alternative = "greater",
    mu = 0,
    sigma.x = sd(after),
    sigma.y = sd(before)
))