## code to prepare `admin2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/S2020_IS.zip", temp)
admin2020 <- read.table(unz(temp, "s2020_is.csv"), sep = ",", header = TRUE)

unlink(temp)

usethis::use_data(admin2020, overwrite = TRUE)
