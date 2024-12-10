library(testthat)
# Testing R
a <- 1
b <- 2
c <- a + b
testthat::expect_equal(c,4)
print("Finished running tests")