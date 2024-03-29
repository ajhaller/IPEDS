## code to prepare `offerings2021` dataset goes here

library(tidyverse)

temp <- tempfile()
download.file("https://nces.ed.gov/ipeds/datacenter/data/IC2021.zip", temp)
offerings2021 <- read.table(unz(temp, "ic2021.csv"), sep = ",", header = TRUE)

offerings2021 <- offerings2021 %>%
  rename(INSTITUTION_ID = UNITID,
         OCCUPATIONAL = PEO1ISTR,
         ACADEMIC = PEO2ISTR,
         CONTIN_PROFESS = PEO3ISTR,
         RECREATE_AVO = PEO4ISTR,
         REMEDIAL = PEO5ISTR,
         SECONDARY = PEO6ISTR,
         AFFILIATION = CNTLAFFI,
         PRIMARY_CON = PUBPRIME,
         SECOND_CON = PUBSECON,
         RELIG_AFF = RELAFFIL,
         CERT_1Y = LEVEL1,
         CERT_12W = LEVEL1A,
         CERT_L1Y = LEVEL1B,
         CERT_L2Y = LEVEL2,
         ASSOCIATES = LEVEL3,
         CERT_L4Y = LEVEL4,
         BACHELORS = LEVEL5,
         POST_BACH = LEVEL6,
         MASTERS = LEVEL7,
         POST_MASTERS = LEVEL8,
         OTHER = LEVEL12,
         DOC_RS = LEVEL17,
         DOC_P = LEVEL18,
         DOC_O =LEVEL19,
         DOC_P_E = DOCPP,
         DOC_PF = DOCPPSP,
         VET_YELLOWR = VET1,
         VET_MTC = VET2,
         VET_SUPP = VET3,
         VET_ORG = VET4,
         VET_SOC = VET5,
         VET_NA = VET9,
         DUAL = CREDITS1,
         LIFE_EXP = CREDITS2,
         AP = CREDITS3,
         CRED_NA = CREDITS4,
         ROTC = SLO5,
         ROTC_ARMY = SLO51,
         ROTC_NAVY = SLO52,
         ROTC_AIR = SLO53,
         STUDY_ABROAD = SLO6,
         WKEND_EV = SLO7,
         TEACH_CERT = SLO8,
         TEACH_CERT_S = SLO81,
         TEACH_CERT_O = SLO82,
         TEACH_CERT_STATE = SLO83,
         SLNA = SLO9,
         REME_SERV = STUSRV1,
         ACAREER_SERV = STUSRV2,
         EMPLOY_SERV = STUSRV3,
         PLACE_SERV = STUSRV4,
         DAYCARE = STUSRV8,
         SERVNA = STUSRV9,
         LIB_PHYS = LIBRES1,
         LIB_PRINT = LIBRES2,
         LIB_DIGI = LIBRES3,
         LIB_STAFF = LIBRES4,
         LIB_HOURS = LIBRES5,
         LIB_COLLECT = LIBRES6,
         LIB_NA = LIBRES9,
         TUIT_ALT = TUITPL,
         TUIT_GUARAN = TUITPL1,
         TUIT_PREPAID = TUITPL2,
         TUIT_PAY = TUITPL3,
         TUIT_OALT = TUITPL4,
         DIST_EDUC_UGC = DSTNUGC,
         DIST_EDUC_UGP = DSTNUGP,
         DIST_EDUC_UGN = DSTNUGN,
         DIST_EDUC_GC = DSTNGC,
         DIST_EDUC_GP = DSTNGP,
         DIST_EDUC_GN = DSTNGN,
         DIST_EDUC_C = DISTCRS,
         DIST_EDUC_P = DISTPGS,
         DIST_EDUC_UGCP = DSTNCED1,
         DIST_EDUC_GCP = DSTNCED2,
         DIST_EDUC_NA = DSTNCED3,
         DIST_EDUC_ALL = DISTNCED,
         LIVE_ONCAMP = ALLONCAM,
         ROOM_PRICE = ROOMAMT,
         BOARD_PRICE = BOARDAMT,
         R_B_PRICE = RMBRDAMT,
         NAA = ATHASSOC,
         NCAA = ASSOC1,
         NAIA = ASSOC2,
         NJCAA = ASSOC3,
         NSCAA = ASSOC4,
         NCCAA = ASSOC5,
         AA_NA = ASSOC6,
         MEM_FOOTBALL = SPORT1,
         CON_FOOTBALL = CONFNO1,
         MEM_BASKETBALL = SPORT2,
         CON_BASKETBALL = CONFNO2,
         MEM_BASEBALL = SPORT3,
         CON_BASEBALL = CONFNO3,
         MEM_TRACK = SPORT4,
         CON_TRACK = CONFNO4) %>%
  select(-DISABPCT, -XDISABPC, -XROOMCAP, -XMEALSWK, -XROOMAMT, -XBORDAMT, -XRMBDAMT, -XAPPFEEU, -XAPPFEEG)


unlink(temp)

usethis::use_data(offerings2021, overwrite = TRUE)
