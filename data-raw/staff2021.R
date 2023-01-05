## code to prepare `staff2021` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/S2021_IS.zip", temp)
staff2021 <- read.table(unz(temp, "s2021_is.csv"), sep = ",", header = TRUE)

#renaming variables

staff2021 <- staff2021 %>%
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

# contextualizing ARANK

staff2021 <- staff2021 %>%
  mutate(ARANK =
           case_when(ARANK == 0 ~ "All ranks",
                     ARANK == 1 ~ "Professors",
                     ARANK == 2 ~ "Associate professors",
                     ARANK == 3 ~ "Assistant professors",
                     ARANK == 4 ~ "Instructors",
                     ARANK == 5 ~ "Lecturers",
                     ARANK == 6 ~ "No academic rank"))

unlink(temp)

usethis::use_data(staff2021, overwrite = TRUE)
