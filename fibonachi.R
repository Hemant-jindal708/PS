n <- 1
fib <- numeric(n)
fib[1] <- 0
fib[2] <- 1
if (n > 0) {
    if (n > 3) {
        fib[1] <- 0
        fib[2] <- 1
        for (i in 3:n) {
            fib[i] <- fib[i - 1] + fib[i - 2]
        }
    } else if (n == 2) {
        fib[1] <- 0
        fib[2] <- 1
    } else if (n == 1) {
        fib[1] <- 0
    } else {
        print(0)
    }
}
print(fib)
