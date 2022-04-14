
# combine dataframes into one

cdf1 <- left_join(adm2020, fin_aid1920, by = "INSTITUTION_ID")

cdf2 <- left_join(dir_info2020, offerings2020, by = "INSTITUTION_ID")

c_df <- left_join(cdf1, cdf2, by = "INSTITUTION_ID")

###comparison_df <- comparison_df[!duplicated(comparison_df$INSTITUTION_ID)]


# select the variables i want to keep - will probs take some out

c_df <- c_df %>%
  select("INT_SIZE", "INSTITUTION_ID", "FT_enroll", "PT_enroll", "AVG_AID", "AVG_AWRD", "AVG_FLOAN",

  "CITY", "STATE", "HBCU", "TRIBAL", "LOCALE", "OPENPUBL",

  "TUITVARY", "R_B_PRICE", "APPLFEEU", "ACADEMIC", "AP", "DUAL", "STUDY_ABROAD", "REME_SERV",
  "ACAREER_SERV", "EMPLOY_SERV", "PLACE_SERV", "DAYCARE", "LIVE_ONCAMP", "MEALSWK", "NCAA"
  )
