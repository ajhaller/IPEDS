library(testthat)
library(dplyr)

testthat::test_that("number of columns in the resulting tibble is correct", {
  expect_equal(ncol(admission_reqs("Smith College")), 2)
})

testthat::test_that("number of rows in the resulting tibble is correct", {
  expect_equal(nrow(admission_reqs("Smith College")), 9)
})
