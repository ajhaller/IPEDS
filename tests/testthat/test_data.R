library(testthat)


testthat::test_that("number of columns in Admissions Fall 2020 df is correct", {
  expect_equal(ncol(adm2020) , 39)
})


test_that("number of rows in Admissions Fall 2020 df is correct", {
  expect_equal(nrow(adm2020) , 1989)
})


test_that("Number of unique institution IDs is 1989", {
  adm2020_2 <- adm2020 %>%
    dplyr::group_by(institution_id)%>%
    dplyr::summarise( n = dplyr::n())
  expect_equal(nrow(adm2020_2), 1989)
})
