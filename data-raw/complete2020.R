## code to prepare `complete2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/C2020_C.zip", temp)
complete2020 <- read.table(unz(temp, "c2020_c.csv"), sep = ",", header = TRUE)

complete2020 <- complete2020 %>%
  select(-starts_with("X"))

unlink(temp)

usethis::use_data(complete2020, overwrite = TRUE)
