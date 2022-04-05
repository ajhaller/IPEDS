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

unlink(temp)

usethis::use_data(fall_enroll2020, overwrite = TRUE)
