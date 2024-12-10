library(testthat)
# Testing R
a <- 1
b <- 2
c <- a + b
testthat::expect_equal(c,3)
print("Finished running tests")