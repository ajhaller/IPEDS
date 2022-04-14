library(testthat)
library(dplyr)

#adm2020 tests

testthat::test_that("number of columns in Admissions Fall 2020 df is correct", {
  expect_equal(ncol(adm2020), 39)
})


test_that("number of rows in Admissions Fall 2020 df is correct", {
  expect_equal(nrow(adm2020), 1989)
})


test_that("Number of unique institution IDs is 1989", {
  adm2020_2 <- adm2020 %>%
    dplyr::group_by(INSTITUTION_ID) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(adm2020_2), 1989)
})


test_that("number of full time enrollment combined with part time enrollment equals total enrollment in Admissions Fall 2020 df is correct", {
  adm_2020_enrl <- adm2020 %>%
    na.omit(FT_enroll) %>%
    na.omit(PT_enroll) %>%
    na.omit(ENRLT)
  expect_equal(sum(adm_2020_enrl$FT_enroll + adm_2020_enrl$PT_enroll), sum(adm_2020_enrl$ENRLT))
})

test_that("the possible range of Reading-Writing SAT scores 25th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$RW_SAT_25, na.rm = TRUE) >= 200 & max(adm2020$RW_SAT_25, na.rm = TRUE) <= 800)
})

test_that("the possible range of Reading-Writing SAT scores 75th percentilein Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$RW_SAT_75, na.rm = TRUE) >= 200 & max(adm2020$RW_SAT_75, na.rm = TRUE) <= 800)
})

test_that("the possible range of Math SAT scores 25th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$MTH_SAT_25, na.rm = TRUE) >= 200 & max(adm2020$MTH_SAT_25, na.rm = TRUE) <= 800)
})

test_that("the possible range of Math SAT scores 75th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$MTH_SAT_75, na.rm = TRUE) >= 200 & max(adm2020$MTH_SAT_75, na.rm = TRUE) <= 800)
})

test_that("the possible range of ACT composite scores 25th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$ACT_25, na.rm = TRUE) >= 1 & max(adm2020$ACT_25, na.rm = TRUE) <= 36)
})

test_that("the possible range of ACT composite scores 75th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$ACT_75, na.rm = TRUE) >= 1 & max(adm2020$ACT_75, na.rm = TRUE) <= 36)
})

test_that("the possible range of ACT English scores 25th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$eng_ACT_25, na.rm = TRUE) >= 1 & max(adm2020$eng_ACT_25, na.rm = TRUE) <= 36)
})

test_that("the possible range of ACT English scores 75th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$eng_ACT_75, na.rm = TRUE) >= 1 & max(adm2020$eng_ACT_75, na.rm = TRUE) <= 36)
})

test_that("the possible range of ACT Math scores 25th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$MTH_ACT_25, na.rm = TRUE) >= 1 & max(adm2020$MTH_ACT_25, na.rm = TRUE) <= 36)
})

test_that("the possible range of ACT Math scores 75th percentile in Admissions Fall 2020 df is correct", {
  expect_true(min(adm2020$MTH_ACT_75, na.rm = TRUE) >= 1 & max(adm2020$MTH_ACT_75, na.rm = TRUE) <= 36)
})
