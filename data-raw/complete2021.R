## code to prepare `complete2021` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/C2021_C.zip", temp)
complete2021 <- read.table(unz(temp, "c2021_c.csv"), sep = ",", header = TRUE)

complete2021 <- complete2021 %>%
  select(-starts_with("X")) %>%
  rename(INSTITUTION_ID = UNITID,
         AWARD_LVL = AWLEVELC,
         TOTAL = CSTOTLT,
         TOTAL_M = CSTOTLM,
         TOTAL_W = CSTOTLW,
         TOTAL_NATIVE = CSAIANT,
         TOTAL_ASIAN = CSASIAT,
         TOTAL_BLACK = CSBKAAT,
         TOTAL_HISP = CSHISPT,
         TOTAL_NHPI = CSNHPIT,
         TOTAL_WHITE = CSWHITT,
         TOTAL_MULT = CS2MORT,
         TOTAL_UNKNOWN = CSUNKNT,
         TOTAL_NRA = CSNRALT,
         UND18 = CSUND18,
         AGE18_24 = CS18_24,
         AGE25_39 = CS25_39,
         AGE40PLUS = CSABV40,
         AGE_UNKNOWN = CSUNKN,
         )

unlink(temp)

usethis::use_data(complete2021, overwrite = TRUE)
