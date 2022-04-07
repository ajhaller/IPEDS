library(testthat)
library(dplyr)
library(purrr)

#fin_aid1920 tests

testthat::test_that("number of columns in Financial Aid 19-20 df is correct", {
  expect_equal(ncol(fin_aid1920), 91)
})


test_that("number of rows in Financial Aid 19-20 df is correct", {
  expect_equal(nrow(fin_aid1920), 5859)
})


test_that("Number of unique institution IDs is 1989", {
  fin_aid1920_2 <- fin_aid1920 %>%
    dplyr::group_by(INSTITUTION_ID) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(fin_aid1920_2), 5859)
})

test_that("Every variable in Financial Aid 19-20 df is numeric", {
  expect_equal(all(map_chr(fin_aid1920, class) == "integer"), TRUE)
})
