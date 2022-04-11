## code to prepare `offerings2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/IC2020.zip", temp)
offerings2020 <- read.table(unz(temp, "ic2020.csv"), sep = ",", header = TRUE)

unlink(temp)

usethis::use_data(adm2020, overwrite = TRUE)
