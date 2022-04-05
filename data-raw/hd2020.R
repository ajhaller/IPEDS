## code to prepare `hd2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/HD2020.zip", temp)
hd2020 <- read.table(unz(temp, "hd2020.csv"), sep = ",", header = TRUE)

hd2020 <- hd2020 %>%
  select(-IALIAS, -CHFNM, -CHFTITLE, -GENTELE, -EIN, -DUNS, -OPEID, -SECTOR,
         -HLOFFER, -DEGGRANT, -NEWID, -DEATHYR, -CYACTIVE, -POSTSEC, -PSET4FLG,
         -INSTCAT, -C18BASIC, -C15BASIC, -CCBASIC, -LANDGRNT, -CBSA, -CBSATYPE,
         -CSA, -NECTA, -DFRCGID, -DFRCUSCG) %>%
  filter(CLOSEDAT == -2 & PSEFLAG == 1)

unlink(temp)

usethis::use_data(hd2020, overwrite = TRUE)
