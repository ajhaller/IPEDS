
#'@import dplyr
#'@import tidyverse

globalVariables(c("fin_aid1920", "adm_2020", "offerings2020", "dir_info2020", "INSTITUTION", "INT_SIZE", "FT_enroll", "PT_enroll", "AVG_AID", "AVG_AWRD", "CITY", "STATE",
                  "BEA_REG", "LOCALE", "CALSYS", "adm_tscores", "R_B_PRICE", "APPLFEEU", "ACADEMIC", "AP",
                  "DUAL", "STUDY_ABROAD", "REME_SERV", "ACAREER_SERV", "EMPLOY_SERV", "PLACE_SERV", "DAYCARE", "LIVE_ONCAMP",
                  "MEALSWK"))





# combine dataframes into one

c_df <- left_join(fin_aid1920, adm_2020, by = "INSTITUTION_ID")

c_df <- left_join(c_df, offerings2020, by = "INSTITUTION_ID")

c_df <- left_join(c_df, dir_info2020, by = "INSTITUTION_ID")

c_df <- c_df[!duplicated(c_df$INSTITUTION_ID),]


# select the variables i want to keep - will probs take some out

c_df <- c_df %>%
  select("INSTITUTION", "INT_SIZE", "FT_enroll", "PT_enroll", "AVG_AID", "AVG_AWRD", "CITY", "STATE",
         "BEA_REG", "LOCALE", "CALSYS", "adm_tscores", "R_B_PRICE", "APPLFEEU", "ACADEMIC", "AP",
         "DUAL", "STUDY_ABROAD", "REME_SERV", "ACAREER_SERV", "EMPLOY_SERV", "PLACE_SERV", "DAYCARE", "LIVE_ONCAMP",
         "MEALSWK"
         )

c_df <- c_df %>%
  rename(
    "Institution" = "INSTITUTION",
    "Size" = "INT_SIZE",
    "Full Time Students" = "FT_enroll",
    "Part Time Students" = "PT_enroll",
    "Average Aid Awarded" = "AVG_AID",
    "Average Award Size" = "AVG_AWRD",
    "City" = "CITY",
    "State" = "STATE",
    "Region" = "BEA_REG",
    "Urbanization" = "LOCALE",
    "Calender System" = "CALSYS",
    "Admission Test Scores" = "adm_tscores",
    "Room & Board Cost" = "R_B_PRICE",
    "Application Fee" = "APPLFEEU",
    "Degrees Offered" = "ACADEMIC",
    "AP Credit Accepted" = "AP",
    "Dual Enrollment Credit Accepted" = "DUAL",
    "Study Abroad Programs" = "STUDY_ABROAD",
    "Meals per Week" = "MEALSWK"

  )
