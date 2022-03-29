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

# renaming variables

adm2020 <- adm2020 %>%
  rename(
    institution_id = UNITID,
    hs_gpa = ADMCON1,
    hs_rank = ADMCON2,
    hs_record = ADMCON3,
    cprep_program = ADMCON4,
    recs = ADMCON5,
    competencies = ADMCON6,
    adm_tscores = ADMCON7,
    test_eng_FL = ADMCON8,
    other_test = ADMCON9,
    FT_enroll = ENRLFT,
    FT_enroll_M = ENRLFTM,
    FT_enroll_W = ENRLFTW,
    PT_enroll = ENRLPT,
    PT_enroll_M = ENRLPTM,
    PT_enroll_W = ENRLPTW,
    SAT_num = SATNUM,
    SAT_pct = SATPCT,
    ACT_num = ACTNUM,
    ACT_pct = ACTPCT,
    RW_SAT_25 = SATVR25,
    RW_SAT_75 = SATVR75,
    MTH_SAT_25 = SATMT25,
    MTH_SAT_75 = SATMT75,
    ACT_25 = ACTCM25,
    ACT_75 = ACTCM75,
    MTH_ACT_25 = ACTMT25,
    MTH_ACT_75 = ACTMT75,
    eng_ACT_25 = ACTEN25,
    eng_ACT_75 = ACTEN75
  )


