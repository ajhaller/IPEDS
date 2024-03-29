library(testthat)
library(dplyr)
library(purrr)

# conference tests

testthat::test_that("number of columns in conference df is correct", {
  expect_equal(ncol(conference), 3)
})

test_that("number of rows in conference df is correct", {
  expect_equal(nrow(conference), 497)
})

test_that("Number of conferences for football is correct", {
  expect_equal(length(which(conference$Sport =="Football")), 98)
})

test_that("Number of conferences for basketball is correct", {
  expect_equal(length(which(conference$Sport =="Basketball")), 133)
})

test_that("Number of conferences for baseball is correct", {
  expect_equal(length(which(conference$Sport =="Baseball")), 132)
})

test_that("Number of conferences for track is correct", {
  expect_equal(length(which(conference$Sport =="Track")), 134)
})
