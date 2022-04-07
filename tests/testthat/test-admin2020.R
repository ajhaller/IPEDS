
#admin2020 tests

testthat::test_that("number of columns in Admissions Fall 2020 df is correct", {
  expect_equal(ncol(admin2020), 34)
})


test_that("number of rows in Admissions Fall 2020 df is correct", {
  expect_equal(nrow(admin2020), 63843)
})


test_that("Number of unique institution IDs is 3594", {
  admin2020_2 <- admin2020 %>%
    dplyr::group_by(INSTITUTION_ID) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(admin2020_2), 3594)
})
