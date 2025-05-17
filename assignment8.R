set.seed(123)
n <- 30
num_samples <- 1000
mu <- 100
sigma <- 15
sample_means <- replicate(num_samples, {
  sample <- r
  mean(sample)
})
print(mean(sample_means))
print(var(sample_means))