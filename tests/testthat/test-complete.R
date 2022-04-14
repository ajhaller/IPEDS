
# complete2020 tests

testthat::test_that("number of columns in Complete 2020 df is correct", {
  expect_equal(ncol(complete2020), 19)
})

test_that("number of rows in Complete 2020 df is correct", {
  expect_equal(nrow(complete2020), 15937)
})

test_that("Number of total men plus total women equals total in Complete 2020 df is correct", {
  complete2020_2 <- complete2020 %>%
    na.omit(TOTAL) %>%
    na.omit(TOTAL_M) %>%
    na.omit(TOTAL_W)
  expect_equal(sum(complete2020_2$TOTAL_M + complete2020_2$TOTAL_W), sum(complete2020_2$TOTAL))
})

test_that("Number of total of each race equals total in Complete 2020 df is correct", {
  complete2020_2 <- complete2020 %>%
    na.omit(TOTAL_NATIVE) %>%
    na.omit(TOTAL_ASIAN) %>%
    na.omit(TOTAL_BLACK) %>%
    na.omit(TOTAL_HISP) %>%
    na.omit(TOTAL_NHPI) %>%
    na.omit(TOTAL_WHITE) %>%
    na.omit(TOTAL_MULT) %>%
    na.omit(TOTAL_UNKNOWN) %>%
    na.omit(TOTAL_NRA)
  expect_equal(sum(complete2020_2$TOTAL_NATIVE + complete2020_2$TOTAL_ASIAN + complete2020_2$TOTAL_BLACK + complete2020_2$TOTAL_HISP + complete2020_2$TOTAL_NHPI + complete2020_2$TOTAL_WHITE + complete2020_2$TOTAL_MULT + complete2020_2$TOTAL_UNKNOWN + complete2020_2$TOTAL_NRA), sum(complete2020_2$TOTAL))
})

test_that("Number of total of each age category equals total in Complete 2020 df is correct", {
  complete2020_2 <- complete2020 %>%
    na.omit(UND18) %>%
    na.omit(AGE18_24) %>%
    na.omit(AGE25_39) %>%
    na.omit(AGE40PLUS) %>%
    na.omit(AGE_UNKNOWN)
  expect_equal(sum(complete2020_2$UND18 + complete2020_2$AGE18_24 + complete2020_2$AGE25_39 + complete2020_2$AGE40PLUS + complete2020_2$AGE_UNKNOWN), sum(complete2020_2$TOTAL))
})
