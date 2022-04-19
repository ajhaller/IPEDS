library(testthat)
library(dplyr)
library(purrr)

#compare_int() function tests

compare_test <- compare_int(Institution1_ID = 167835, Institution2_ID = 168218)

testthat::test_that("The Institution ID corresponds to the correct State", {
  expect_equal(compare_test[7,1], "MA")
})


test_that("number of columns in compare_test is correct", {
  expect_equal(ncol(compare_test), 2)
})

test_that("number of rows in compare_test is correct", {
  expect_equal(nrow(compare_test), 18)
})

test_that("Every variable in Size is a character", {
  expect_equal(all(map_chr(compare_test[1,], class) == "character"), TRUE)
})

testthat::test_that("The Institution ID corresponds to the correct State", {
  expect_equal(compare_test[7,1], "MA")
})

testthat::test_that("Wellesley students recieve 21 meals a week", {
  expect_equal((compare_test[18,2]) == 21, TRUE)
})

testthat::test_that("Smith College is in the city of Northampton", {
  expect_equal((compare_test[6,1]) == "Northampton", TRUE)
})

testthat::test_that("Wellesley College has more students than Smith College", {
  expect_equal((compare_test[2,1] < compare_test[2,2]), TRUE)
})










