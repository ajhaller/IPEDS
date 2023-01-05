library(testthat)
library(dplyr)

#offerings2021 tests

testthat::test_that("number of columns in offeringsissions Fall 2021 df is correct", {
  expect_equal(ncol(offerings2021), 114)
})


test_that("number of rows in offeringsissions Fall 2021 df is correct", {
  expect_equal(nrow(offerings2021), 6179)
})


test_that("Number of unique institution IDs is 1989", {
  offerings2021_2 <- offerings2021 %>%
    dplyr::group_by(INSTITUTION_ID) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(offerings2021_2), 6179)
})

test_that("Number of unique religious afilliations is 64", {
  offerings2021_2 <- offerings2021 %>%
    dplyr::group_by(RELIG_AFF) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(offerings2021_2), 64)
})

