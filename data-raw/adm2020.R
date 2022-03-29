## code to prepare `adm2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/ADM2020.zip",temp)
adm2020 <- read.table(unz(temp, "adm2020.csv"), sep=",", header=TRUE)

# contextualizing columns 2-10

adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 1 ] <- "Required"
adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 2 ] <- "Recommended"
adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 3 ] <- "Neither_required_nor_recommended"
adm2020[ , 2:10 ][ adm2020[ , 2:10 ] == 5 ] <- "Considered_but_not_required"

# removing imputation variables

adm2020 <- adm2020 %>%
  select(UNITID, ADMCON1, ADMCON2, ADMCON3, ADMCON4, ADMCON5, ADMCON6, ADMCON7, ADMCON8,
         ADMCON9, APPLCN, APPLCNM, APPLCNW, ADMSSN, ADMSSNM, ADMSSNW, ENRLT, ENRLM, ENRLW,
         ENRLFT, ENRLFTM, ENRLFTW, ENRLPT, ENRLPTM, ENRLPTW, SATNUM, SATPCT, ACTNUM, ACTPCT,
         SATVR25, SATVR75, SATMT25, SATMT75, ACTCM25, ACTCM75, ACTEN25, ACTEN75, ACTMT25,
         ACTMT75)

unlink(temp)

usethis::use_data(adm2020, overwrite = TRUE)

