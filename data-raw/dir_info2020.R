## code to prepare `hd2020` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/HD2020.zip", temp)
dir_info2020 <- read.table(unz(temp, "hd2020.csv"), sep = ",", header = TRUE, encoding = "UTF-8")

dir_info2020 <- dir_info2020 %>%
  select(-IALIAS, -CHFNM, -CHFTITLE, -GENTELE, -EIN, -DUNS, -OPEID, -SECTOR,
         -HLOFFER, -DEGGRANT, -NEWID, -DEATHYR, -CYACTIVE, -POSTSEC, -PSET4FLG,
         -INSTCAT, -C18BASIC, -C15BASIC, -CCBASIC, -LANDGRNT, -CBSA, -CBSATYPE,
         -CSA, -NECTA, -DFRCGID, -DFRCUSCG) %>%
  filter(CLOSEDAT == -2 & PSEFLAG == 1)

dir_info2020 <- dir_info2020 %>%
  rename(
    INSTITUTION_ID = UNITID,
    INSTITUTION = INSTNM,
    ADDRESS = ADDR,
    STATE = STABBR,
    BEA_REG = OBEREG,
    AID_ELIG = OPEFLAG,
    WEBSITE = WEBADDR,
    ADMIN_WEB = ADMINURL,
    FINAID_WEB = FAIDURL,
    APPLICATION = APPLURL,
    NPRICE_CALC = NPRICURL,
    VET_TUITION = VETURL,
    ATH_GRAD_RATE = ATHURL,
    DISABILITY_WEB = DISAURL,
    INT_LEVEL = ICLEVEL,
    INT_CONTROL = CONTROL,
    UNGRAD_OFFER = UGOFFER,
    GRAD_OFFER = GROFFER,
    HD_OFFER = HDEGOFR1,
    INT_STATUS = ACT,
    CLOSE_DATE = CLOSEDAT,
    POST_SEC = PSEFLAG,
    CC_U2018 = C18IPUG,
    CC_G2018 = C18IPGRD,
    CC18_U_PROFILE = C18UGPRF,
    CC18_ENROLL = C18ENPRF,
    CC18_SIZE_SET = C18SZSET,
    C_PROGRAMS = CARNEGIE,
    INT_SIZE = INSTSIZE,
    MULT_ORG = F1SYSTYP,
    MULT_ORG_NAME = F1SYSNAM,
    MULT_ORG_CODE = F1SYSCOD,
    CONGRESS_DIS_ID = CNGDSTCD
  )

dir_info2020 <- dir_info2020 %>%
  mutate(BEA_REG =
           case_when(BEA_REG == 0 ~ "U.S Service Schools",
                     BEA_REG == 1 ~ "New England",
                     BEA_REG == 2 ~ "Mid East",
                     BEA_REG == 3 ~ "Great Lakes",
                     BEA_REG == 4 ~ "Plains",
                     BEA_REG == 5 ~ "Southeast",
                     BEA_REG == 6 ~ "Southwest",
                     BEA_REG == 7 ~ "Rocky Mountains",
                     BEA_REG == 8 ~ "Far West",
                     BEA_REG == 9 ~ "Other U.S. Jurisdictions")
         )

unlink(temp)

usethis::use_data(dir_info2020, overwrite = TRUE)
