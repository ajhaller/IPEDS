
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

test_that("Number of unique instructional staff categories is 65", {
  admin2020_2 <- admin2020 %>%
    dplyr::group_by(STAFF_CAT) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(admin2020_2), 65)
})

test_that("Number of unique faculty and tenure status is 11", {
  admin2020_2 <- admin2020 %>%
    dplyr::group_by(FACSTAT) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(admin2020_2), 11)
})

test_that("Number of academic ranks is 7", {
  admin2020_2 <- admin2020 %>%
    dplyr::group_by(ARANK) %>%
    dplyr::summarise(n = dplyr::n())
  expect_equal(nrow(admin2020_2), 7)
})

test_that("Number of total men plus total women equals total in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(TOTAL) %>%
    na.omit(TOTAL_M) %>%
    na.omit(TOTAL_W)
  expect_equal(sum(admin2020_2$TOTAL_M + admin2020_2$TOTAL_W), sum(admin2020_2$TOTAL))
})

test_that("Number of total native men plus total native women equals total native in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(NATIVE_TOTAL) %>%
    na.omit(NATIVE_M) %>%
    na.omit(NATIVE_W)
  expect_equal(sum(admin2020_2$NATIVE_M + admin2020_2$NATIVE_W), sum(admin2020_2$NATIVE_TOTAL))
})

test_that("Number of total asian men plus total asian women equals total asians in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(ASIAN_TOTAL) %>%
    na.omit(ASIAN_M) %>%
    na.omit(ASIAN_W)
  expect_equal(sum(admin2020_2$ASIAN_M + admin2020_2$ASIAN_W), sum(admin2020_2$ASIAN_TOTAL))
})

test_that("Number of total black men plus total black women equals total black people in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(BLACK_TOTAL) %>%
    na.omit(BLACK_M) %>%
    na.omit(BLACK_W)
  expect_equal(sum(admin2020_2$BLACK_M + admin2020_2$BLACK_W), sum(admin2020_2$BLACK_TOTAL))
})

test_that("Number of total hispanic men plus total hispanic women equals total hispanics in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(HISP_TOTAL) %>%
    na.omit(HISP_M) %>%
    na.omit(HISP_W)
  expect_equal(sum(admin2020_2$HISP_M + admin2020_2$HISP_W), sum(admin2020_2$HISP_TOTAL))
})

test_that("Number of total native hawaiian or pacific islander men plus total native hawaiian or pacific islander women equals total native hawaiian or pacific islanders in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(NHPI_TOTAL) %>%
    na.omit(NHPI_M) %>%
    na.omit(NHPI_W)
  expect_equal(sum(admin2020_2$NHPI_M + admin2020_2$NHPI_W), sum(admin2020_2$NHPI_TOTAL))
})

test_that("Number of total white men plus total white women equals total whites in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(WHITE_TOTAL) %>%
    na.omit(WHITE_M) %>%
    na.omit(WHITE_W)
  expect_equal(sum(admin2020_2$WHITE_M + admin2020_2$WHITE_W), sum(admin2020_2$WHITE_TOTAL))
})

test_that("Number of total bi or multiracial men plus total bi or multiracial women equals total bi or multiracial in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(MULT_TOTAL) %>%
    na.omit(MULT_M) %>%
    na.omit(MULT_W)
  expect_equal(sum(admin2020_2$MULT_M + admin2020_2$MULT_W), sum(admin2020_2$MULT_TOTAL))
})

test_that("Number of total 'race unknown' men plus total 'race unknown' women equals total 'race unknown' in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(UNKNOWN_TOTAL) %>%
    na.omit(UNKNOWN_M) %>%
    na.omit(UNKNOWN_W)
  expect_equal(sum(admin2020_2$UNKNOWN_M + admin2020_2$UNKNOWN_W), sum(admin2020_2$UNKNOWN_TOTAL))
})

test_that("Number of total 'nonresident alien' men plus total 'nonresident alien' women equals total 'nonresident alien' in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(NRA_TOTAL) %>%
    na.omit(NRA_M) %>%
    na.omit(NRA_W)
  expect_equal(sum(admin2020_2$NRA_M + admin2020_2$NRA_W), sum(admin2020_2$NRA_TOTAL))
})

test_that("Number of total of each race equals total in Admissions Fall 2020 df is correct", {
  admin2020_2 <- admin2020 %>%
    na.omit(NATIVE_TOTAL) %>%
    na.omit(ASIAN_TOTAL) %>%
    na.omit(BLACK_TOTAL) %>%
    na.omit(HISP_TOTAL) %>%
    na.omit(NHPI_TOTAL) %>%
    na.omit(WHITE_TOTAL) %>%
    na.omit(MULT_TOTAL) %>%
    na.omit(UNKNOWN_TOTAL) %>%
    na.omit(NRA_TOTAL)
  expect_equal(sum(admin2020_2$NATIVE_TOTAL + admin2020_2$ASIAN_TOTAL + admin2020_2$BLACK_TOTAL + admin2020_2$HISP_TOTAL + admin2020_2$NHPI_TOTAL + admin2020_2$WHITE_TOTAL + admin2020_2$MULT_TOTAL + admin2020_2$UNKNOWN_TOTAL + admin2020_2$NRA_TOTAL), sum(admin2020_2$TOTAL))
})


