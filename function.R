add <- function(x, y) {
    return(x + y)
}
sub <- function(x, y) {
    return(x - y)
}
choice <- 2
x <- 1
y <- 2
switch(choice, add(1, 2), sub(5, 6))
