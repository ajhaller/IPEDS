library(testthat)
library(dplyr)
library(purrr)

#school_preferences tests

test <- school_preferences(size = 2, alt_credits = "Yes", diversity_students = 30, diversity_staff = 20, region = "Southeast", calsys = 1, daycare_service = "Yes")

testthat::test_that("number of columns in resulting df is correct", {
  expect_equal(ncol(test), 25)
})

testthat::test_that("diversity of students in resulting df is correct", {
  expect_equal(all(test$`Student Diversity` >= 30), TRUE)
})

testthat::test_that("diversity of staff in resulting df is correct", {
  expect_equal(all(test$`Staff Diversity` >= 20), TRUE)
})

testthat::test_that("the region in resulting df is correct", {
  expect_equal(all(test$Region == "Southeast"), TRUE)
})

testthat::test_that("alternative credits in resulting df is correct", {
  expect_equal(all(test$`Alternative Credit` == "Takes alternate credit"), TRUE)
})

testthat::test_that("size in resulting df is correct", {
  expect_equal(all(test$`Institution Size` == 2), TRUE)
})

testthat::test_that("calendar system in resulting df is correct", {
  expect_equal(all(test$`Calendar System` == 1), TRUE)
})

testthat::test_that("daycare in resulting df is correct", {
  expect_equal(all(test$`Daycare Services` == "Offers daycare services"), TRUE)
})

testthat::test_that("The output is a df", {
  expect_equal(class(test), "data.frame")
})
