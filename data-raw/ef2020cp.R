## code to prepare `fall_enroll2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/EF2020CP.zip", temp)
fall_enroll2020 <- read.table(unz(temp, "ef2020cp.csv"), sep = ",", header = TRUE)

fall_enroll2020 <- fall_enroll2020 %>%
  select(-starts_with("X"))

instit <- fall_enroll2020 %>%
  count(UNITID)

unlink(temp)

usethis::use_data(fall_enroll2020, overwrite = TRUE)
