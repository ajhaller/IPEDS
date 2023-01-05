library(testthat)
library(dplyr)

#dir_info2021 tests

testthat::test_that("number of columns in Directory Information 2021 df is correct", {
  expect_equal(ncol(dir_info2021), 47)
})


test_that("number of rows in Directory Information 2021 df is correct", {
  expect_equal(nrow(dir_info2021), 6129)
})


test_that("Number of unique institution IDs is 6129", {
  dir_info2021_2 <- dir_info2021 %>%
    dplyr::group_by(INSTITUTION_ID) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(dir_info2021_2), 6129)
})

testthat::test_that("length of institution id in Directory Information 2021 df is correct", {
  expect_equal(nchar(dir_info2021$INSTITUTION_ID), rep(6, 6129))
})
