## code to prepare `adm2020` dataset goes here

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/ADM2020.zip",temp)
adm2020 <- read.table(unz(temp, "adm2020.csv"), sep=",", header=TRUE)

# contextualizing columns 2-10
adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 1 ] <- "Required"
adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 2 ] <- "Recommended"
adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 3 ] <- "Neither_required_nor_recommended"
adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 5 ] <- "Considered_but_not_required"

unlink(temp)

usethis::use_data(adm2020, overwrite = TRUE)

