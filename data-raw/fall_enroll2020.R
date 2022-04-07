## code to prepare `fall_enroll2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/EF2020A.zip", temp)
fall_enroll2020 <- read.table(unz(temp, "ef2020a.csv"), sep = ",", header = TRUE)

fall_enroll2020 <- fall_enroll2020 %>%
  select(-starts_with("X")) %>%
  select(-EFALEVEL, -LINE, -SECTION, -LSTUDY) %>%
  group_by(UNITID) %>%
  summarise_all(sum)

fall_enroll2020 <- fall_enroll2020 %>%
  rename(
    INSTITUTION_ID = UNIT_ID,
    ENROLL = EFTOTLT,
    M_ENROLL = EFTOTLM,
    W_ENROLL = EFTOTLW,
    NATIVE_ENROLL = EFAIANT,
    NATIVE_M_ENROLL = EFAIANM,
    NATIVE_W_ENROLL = EFAIANW,
    ASIAN_ENROLL = EFASIAT,
    ASIAN_M_ENROLL = EFASIAM,
    ASIAN_W_ENROLL = EFASIAW,
    BLACK_ENROLL = EFBKAAT,
    BLACK_M_ENROLL = EFBKAAM,
    BLACK_W_ENROLL = EFBKAAW,
    LATINX_ENROLL = EFHISPT,
    LATINX_M_ENROLL = EFHISPM,
    LATINX_W_ENROLL = EFHISPW,
    PAC_ISL_ENROLL = EFNHPIT,
    PAC_ISL_M_ENROLL = EFNHPIM,
    PAC_ISL_W_ENROLL = EFNHPIW,
    WHITE_ENROLL = EFWHITT,
    WHITE_M_ENROLL = EFWHITM,
    WHITE_W_ENROLL = EFWHITW,
    MULT_RACE_ENROLL = EF2MORT,
    MULT_RACE_M_ENROLL = EF2MORM,
    MULT_RACE_W_ENROLL = EF2MORW,
    UNKNOWN_RACE_ENROLL = EFUNKNT,
    UNKNOWN_RACE_M_ENROLL = EFUNKNM,
    UNKNOWN_RACE_W_ENROLL = EFUNKNW,
    IMMIGRANT_ENROLL = EFNRALT,
    IMMIGRANT_M_ENROLL = EFNRALM,
    IMMIGRANT_W_ENROLL = EFNRALW
  )

unlink(temp)

usethis::use_data(fall_enroll2020, overwrite = TRUE)
