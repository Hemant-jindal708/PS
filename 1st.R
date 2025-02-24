b <- as.integer(readline(prompt = "enter b:"))
a <- as.integer(readline(prompt = "enter a:"))
c <- as.integer(readline(prompt = "enter c:"))
d <- b^2 - 4 * a * c
if (d > 0) {
    print("real 2 roots")
} else if (d == 0) {
    print("real and equal roots")
} else {
    print("complex roots")
}
