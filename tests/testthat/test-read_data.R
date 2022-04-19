library(testthat)
library(dplyr)

data <- read_data("IC2020")

testthat::test_that("Type of output from read_data is correct", {
  expect_equal(typeof(data), "list")
})
