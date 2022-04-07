## code to prepare `admin2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/S2020_IS.zip", temp)
admin2020 <- read.table(unz(temp, "s2020_is.csv"), sep = ",", header = TRUE)

admin2020 <- admin2020 %>%
  select(-starts_with("X")) %>%
  rename(INSTITUTION_ID = UNITID,
         STAFF_CAT = SISCAT,
         TOTAL = HRTOTLT,
         TOTAL_M = HRTOTLM,
         TOTAL_W = HRTOTLW,
         NATIVE_TOTAL = HRAIANT,
         NATIVE_MEN = HRAIANM,
         NATIVE_WOMEN = HRAIANW,
         ASIAN_TOTAL = HRASIAT,
         ASIAN_M = HRASIAM,
         ASIAN_W = HRASIAW,
         BLACK_TOTAL = HRBKAAT,
         BLACK_M = HRBKAAM,
         BLACK_W = HRBKAAW,
         HISP_TOTAL = HRHISPT,
         HISP_M = HRHISPM,
         HISP_W = HRHISPW,
         NHPI_TOTAL = HRNHPIT,
         NHPI_M = HRNHPIM,
         NHPI_W = HRNHPIW,
         WHITE_TOTAL = HRWHITT,
         WHITE_M = HRWHITM,
         WHITE_W = HRWHITW,
         MULT_TOTAL = HR2MORT,
         MULT_M = HR2MORM,
         MULT_W = HR2MORW,
         UNKNOWN_TOTAL = HRUNKNT,
         UNKNOWN_M = HRUNKNM,
         UNKNOWN_W = HRUNKNW,
         NRA_TOTAL = HRNRALT,
         NRA_M = HRNRALM,
         NRA_W = HRNRALW
         )

unlink(temp)

usethis::use_data(admin2020, overwrite = TRUE)
