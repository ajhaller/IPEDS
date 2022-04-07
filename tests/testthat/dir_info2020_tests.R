library(testthat)
library(dplyr)

#dir_info2020 tests

testthat::test_that("number of columns in Directory Information 2020 df is correct", {
  expect_equal(ncol(dir_info2020), 47)
})


test_that("number of rows in Directory Information 2020 df is correct", {
  expect_equal(nrow(dir_info2020), 6220)
})


test_that("Number of unique institution IDs is 1989", {
  dir_info2020_2 <- adm2020 %>%
    dplyr::group_by(INSTITUTION_ID) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(dir_info2020), 6220)
})

testthat::test_that("length of institution id in Directory Information 2020 df is correct", {
  expect_equal(nchar(dir_info2020$INSTITUTION_ID), rep(6, 6220))
})
