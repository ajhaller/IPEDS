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


test_that("number of rows in Admissions Fall 2020 df is correct", {
  expect_equal(nrow(adm2020) , 1989)
})


test_that("number of full time enrollment combined with part time enrollment equals total enrollment in Admissions Fall 2020 df is correct", {
  adm_2020_enrl <- adm2020 %>%
    na.omit(FT_enroll) %>%
    na.omit(PT_enroll) %>%
    na.omit(ENRLT)
  expect_equal(sum(adm_2020_enrl$FT_enroll + adm_2020_enrl$PT_enroll, adm_2020_enrl$ENRLT))

})



