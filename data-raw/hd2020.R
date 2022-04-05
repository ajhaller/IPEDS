## code to prepare `hd2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/HD2020.zip", temp)
hd2020 <- read.table(unz(temp, "hd2020.csv"), sep = ",", header = TRUE)

unlink(temp)

usethis::use_data(hd2020, overwrite = TRUE)
