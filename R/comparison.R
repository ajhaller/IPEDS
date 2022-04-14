
# combine dataframes into one

c_df <- left_join(adm2020, fin_aid1920, by = "INSTITUTION_ID")

c_df <- left_join(c_df, offerings2020, by = "INSTITUTION_ID")

c_df <- left_join(c_df, dir_info2020, by = "INSTITUTION_ID")

c_df <- c_df[!duplicated(c_df$INSTITUTION_ID),]


# select the variables i want to keep - will probs take some out

c_df <- c_df %>%
  select("INT_SIZE", "INSTITUTION_ID", "FT_enroll", "PT_enroll", "AVG_AID", "AVG_AWRD", "AVG_FLOAN", "CITY", "STATE", "HBCU", "TRIBAL", "LOCALE", "OPENPUBL","adm_tscores", "TUITVARY", "R_B_PRICE", "APPLFEEU", "ACADEMIC", "AP", "DUAL", "STUDY_ABROAD", "REME_SERV", "ACAREER_SERV", "EMPLOY_SERV", "PLACE_SERV", "DAYCARE", "LIVE_ONCAMP", "MEALSWK", "NCAA")
