## code to prepare `adm2020` dataset goes here

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/ADM2020.zip",temp)
adm2020 <- read.table(unz(temp, "adm2020.csv"), sep=",", header=TRUE)
unlink(temp)

usethis::use_data(adm2020, overwrite = TRUE)

