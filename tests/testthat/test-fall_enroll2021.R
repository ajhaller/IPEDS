
#fall_enroll2021 tests

testthat::test_that("number of columns in Admissions Fall 2020 df is correct", {
  expect_equal(ncol(fall_enroll2021), 31)
})


test_that("number of rows in Admissions Fall 2020 df is correct", {
  expect_equal(nrow(fall_enroll2021), 6049)
})


test_that("Number of total men plus total women equals total in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(ENROLL) %>%
    na.omit(M_ENROLL) %>%
    na.omit(W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$M_ENROLL + fall_enroll2021_2$W_ENROLL), sum(fall_enroll2021_2$ENROLL))
})

test_that("Number of total native men plus total native women equals total native in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(NATIVE_ENROLL) %>%
    na.omit(NATIVE_M_ENROLL) %>%
    na.omit(NATIVE_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$NATIVE_M_ENROLL + fall_enroll2021_2$NATIVE_W_ENROLL), sum(fall_enroll2021_2$NATIVE_ENROLL))
})

test_that("Number of total asian men plus total asian women equals total asians in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(ASIAN_ENROLL) %>%
    na.omit(ASIAN_M_ENROLL) %>%
    na.omit(ASIAN_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$ASIAN_M_ENROLL + fall_enroll2021_2$ASIAN_W_ENROLL), sum(fall_enroll2021_2$ASIAN_ENROLL))
})

test_that("Number of total black men plus total black women equals total black people in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(BLACK_ENROLL) %>%
    na.omit(BLACK_M_ENROLL) %>%
    na.omit(BLACK_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$BLACK_M_ENROLL + fall_enroll2021_2$BLACK_W_ENROLL), sum(fall_enroll2021_2$BLACK_ENROLL))
})

test_that("Number of total hispanic men plus total hispanic women equals total hispanics in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(LATINX_ENROLL) %>%
    na.omit(LATINX_M_ENROLL) %>%
    na.omit(LATINX_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$LATINX_M_ENROLL + fall_enroll2021_2$LATINX_W_ENROLL), sum(fall_enroll2021_2$LATINX_ENROLL))
})

test_that("Number of total native hawaiian or pacific islander men plus total native hawaiian or pacific islander women equals total native hawaiian or pacific islanders in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(PAC_ISL_ENROLL) %>%
    na.omit(PAC_ISL_M_ENROLL) %>%
    na.omit(PAC_ISL_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$PAC_ISL_M_ENROLL + fall_enroll2021_2$PAC_ISL_W_ENROLL), sum(fall_enroll2021_2$PAC_ISL_ENROLL))
})

test_that("Number of total white men plus total white women equals total whites in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(WHITE_ENROLL) %>%
    na.omit(WHITE_M_ENROLL) %>%
    na.omit(WHITE_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$WHITE_M_ENROLL + fall_enroll2021_2$WHITE_W_ENROLL), sum(fall_enroll2021_2$WHITE_ENROLL))
})

test_that("Number of total bi or multiracial men plus total bi or multiracial women equals total bi or multiracial in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(MULT_RACE_ENROLL) %>%
    na.omit(MULT_RACE_M_ENROLL) %>%
    na.omit(MULT_RACE_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$MULT_RACE_M_ENROLL + fall_enroll2021_2$MULT_RACE_W_ENROLL), sum(fall_enroll2021_2$MULT_RACE_ENROLL))
})

test_that("Number of total 'race unknown' men plus total 'race unknown' women equals total 'race unknown' in Enrollment Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(UNKNOWN_RACE_ENROLL) %>%
    na.omit(UNKNOWN_RACE_M_ENROLL) %>%
    na.omit(UNKNOWN_RACE_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$UNKNOWN_RACE_M_ENROLL + fall_enroll2021_2$UNKNOWN_RACE_W_ENROLL), sum(fall_enroll2021_2$UNKNOWN_RACE_ENROLL))
})

test_that("Number of total 'nonresident alien' men plus total 'nonresident alien' women equals total 'nonresident alien' in Admissions Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(IMMIGRANT_ENROLL) %>%
    na.omit(IMMIGRANT_M_ENROLL) %>%
    na.omit(IMMIGRANT_W_ENROLL)
  expect_equal(sum(fall_enroll2021_2$IMMIGRANT_M_ENROLL + fall_enroll2021_2$IMMIGRANT_W_ENROLL), sum(fall_enroll2021_2$IMMIGRANT_ENROLL))
})

test_that("Number of total of each race equals total in Admissions Fall 2020 df is correct", {
  fall_enroll2021_2 <- fall_enroll2021 %>%
    na.omit(NATIVE_ENROLL) %>%
    na.omit(ASIAN_ENROLL) %>%
    na.omit(BLACK_ENROLL) %>%
    na.omit(LATINX_ENROLL) %>%
    na.omit(PAC_ISL_ENROLL) %>%
    na.omit(WHITE_ENROLL) %>%
    na.omit(MULT_RACE_ENROLL) %>%
    na.omit(UNKNOWN_RACE_ENROLL) %>%
    na.omit(IMMIGRANT_ENROLL)
  expect_equal(sum(fall_enroll2021_2$NATIVE_ENROLL + fall_enroll2021_2$ASIAN_ENROLL + fall_enroll2021_2$BLACK_ENROLL + fall_enroll2021_2$LATINX_ENROLL + fall_enroll2021_2$PAC_ISL_ENROLL + fall_enroll2021_2$WHITE_ENROLL + fall_enroll2021_2$MULT_RACE_ENROLL + fall_enroll2021_2$UNKNOWN_RACE_ENROLL + fall_enroll2021_2$IMMIGRANT_ENROLL), sum(fall_enroll2021_2$ENROLL))
})
