globalVariables(c("dir_info2020", "fin_aid1920", "fall_enroll2020", "admin2020", "INSTITUTION", "INSTITUTION_ID",
                  "Institution ID", "PCT_AID", "INT_SIZE", "ACAREER_SERV", "Years Required For Entering",
                  "BEA_REG", "WHITE_ENROLL", "ENROLL", "TOTAL", "WHITE_TOTAL", "UNKNOWN_RACE_ENROLL", "UNKNOWN_TOTAL",
                  "Student Diversity", "Staff Diversity", "Institution", "% of Students Recieved Aid", "Institution Size",
                  "Region", "AFFILIATION", "RELIG_AFF", "CALSYS", "OPENADMP", "VET_NA", "CRED_NA", "YRSCOLL", "COUNSEL_SERV", "EMPLOY_SERV",
                  "DAYCARE", "TUIT_ALT", "TUIT_GUARAN", "TUIT_PREPAID", "TUIT_PAY", "TUIT_OALT",
                  "DIST_EDUC_NA", "LIVE_ONCAMP", "ROOM_PRICE", "BOARD_PRICE", "APPLFEEU", "APPLFEEG",
                  "% of Students Disabled", "Type of Institution", "Religious Affiliation",
                  "Calendar System", "Open Admissions Policy", "Vet Programs", "Alternative Credit",
                  "Alternative Tuition Payment", "Distance Education", "Counseling Services",
                  "Employment Services", "Daycare Services", "Live On-Campus", "Room Price",
                  "Board Price", "Undergraduate Application Fee", "Graduate Application Fee", "places", "relig",
                  "relig_aff", "offerings2020", "DISAB", "VET_PROGRAMS", "ALT_CREDIT", "DIST_EDUC"))

#' Function for Selecting Institution by Preferences
#'
#' Lists the names of institutions that fit inputted preferences
#'
#' @param financial_aid (numeric) Percent of undergraduate students awarded aid.
#' @param size (numeric) Amount of Students attending the institution. (-4 = Any Size; 1	= Under 1,000; 2 = 1,000 - 4,999; 3	= 5,000 - 9,999; 4 = 10,000 - 19,999; 5	= 20,000 and above; -1 = Not reported; -2	= Not applicable)
#' @param region  (character) Region the institution resides.
#' @param diversity_students (numeric) Percent of non-white students. Returns inputted percent and higher.
#' @param diversity_staff  (numeric) Percent of non-white staff. Returns inputted percent and higher.
#' @param disabled  (numeric) Percent of disabled students. Returns inputted percent and higher.
#' @param affiliation  (numeric) Institutional affiliation. (1	= Public, 2	= Private for-profit, 3	= Private not-for-profit (no religious affiliation), 4 = Private not-for-profit (religious affiliation))
#' @param relig_affil  (numeric) Indicates religious affiliation (denomination) for private not-for-profit institutions that are religiously affiliated. (See `relig_aff` dataset for more information.)
#' @param calsys  (numeric) Standard academic term (1	= Semester, 2	= Quarter, 3 = Trimester, 4	= Four-one-four plan, 5	= Other academic year, 6 = Differs by program, 7 = Continuous, -2	= Not applicable)
#' @param openadmp  (numeric) OPEN ADMISSION - Admission policy whereby the school will accept any student who applies. (1 = Yes, 2 = No)
#' @param vet_programs  (character) Programs offered to Veterans ("Yes" or blank)
#' @param alt_credits  (character) Alternate credits taken by institution ("Yes" or blank)
#' @param yrscoll  (numeric) Years of completed college-level work are required for entrance (1 = One, 2	= Two, 3 = Three, 4 = Four, 5 = Five, 6 = Six, 8 = Eight, -1 = Not reported, -2	= Not applicable)
#' @param counsel_service  (character) Offers activities designed to assist students in making plans and decisions related to their education, career, or personal development. ("Yes" or blank)
#' @param employ_service  (character) Offers activities intended to assist students in obtaining part-time employment as a means of defraying part of the cost of their education. ("Yes" or blank)
#' @param daycare_service  (character) Offers A student service designed to provide appropriate care and protection of infants, preschool, and school-age children so their parents can participate in postsecondary education programs. ("Yes" or blank)
#' @param alt_tuition  (character) Offers alternative tuition plans ("Yes" or blank)
#' @param dist_educ  (character) Offers distance education opportunities ("Yes" or blank)
#' @param live_oncamp  (numeric) First-time degree/certificate-seeking students required to live on campus or in institutionally-controlled housing ("Yes" or blank)
#' @param room_price  (numeric) Price for room (0-9990)
#' @param board_price  (numeric) Price for board (0-9760)
#' @param app_fee  (numeric) Price for application fee (0-99)
#' @return A data frame of the institution that fit inputted preferences. For arguments that represent percentages, the user can expect institutions that meet that percentage or higher; for arguments that represent amounts, the user can expect institutions that meet that amount or lower.
#' @examples
#' school_preferences(size = 2, alt_credits = "Yes", diversity_students = 30, diversity_staff = 20)
#' school_preferences(size = 3, daycare_service = "Yes", app_fee = 50, region = "Southeast")
#' @import dplyr
#' @import tidyr
#' @importFrom rlang is_null
#' @export
school_preferences <- function(financial_aid = 0 , size = -Inf, region = NULL, diversity_students = 0, diversity_staff = 0,
                         disabled = 0, affiliation = -Inf, relig_affil = NULL, calsys = NULL, openadmp = -Inf, vet_programs = NULL,
                        alt_credits = NULL, yrscoll = -Inf, counsel_service = NULL, employ_service = NULL, daycare_service = NULL,
                        alt_tuition = NULL, dist_educ = NULL, live_oncamp = -Inf, room_price = 0, board_price = 0, app_fee = 0) {

  # Error Handling

  places <- unique(dir_info2020$BEA_REG)
  relig <- unique(relig_aff$Numeric_Code)

  if (financial_aid < 0 | financial_aid > 100 | diversity_students < 0 | diversity_students > 100 |
      diversity_staff < 0 | diversity_staff > 100 | disabled < 0 | disabled > 100) {
    stop("For `financial_aid`, `diversity_students, `diversity staff` and `disabled`, please input an percent between 0 and 100.")
  }


  else if (size < 1 & size != -Inf | size > 5) {
    stop("For `size` please input a number between 1 and 5, or -Inf indicating any size.")
  }

  else if (!is_null(region) == TRUE) {
    if (!(region %in% places) == TRUE){
    stop("Please input a region included in the `dir_info2020` dataframe in the `BEA_REG` column, or leave blank for no preference." )
    }
  }

  else if (affiliation < 1 & affiliation != -Inf | affiliation > 4) {
    stop("Please input an affiliation between 1 and 4. Refer to the `offerings2020` dataset in the `AFFILIATION` column for further details." )
  }

  else if (!is_null(relig_affil) == TRUE) {
    if (!(relig_affil %in% relig) == TRUE) {
    stop("Please input a religious affiliation included in the `relig_aff` dataframe, or leave blank for no preference.")
    }
  }

  else if (!is_null(calsys) == TRUE) {
    if (calsys < 1 | calsys > 7) {
    stop("Please input an calendar system between 1 and 7, or leave blank for no preference. Refer to the `offerings2020` dataset in the `CALSYS` column for further details.")
    }
  }

  else if (openadmp < 1 & openadmp != -Inf | openadmp > 2) {
    stop("Please input an open admissions policy as 1, 2, or leave blank for no preference. Refer to the `offerings2020` dataset in the `OPENADMP` column for further details.")
  }

  else if (live_oncamp < 1 & live_oncamp != -Inf | live_oncamp > 2) {
    stop("Please input 1, 2, or leave blank for no preference. Refer to the `offerings2020` dataset in the `LIVE_ONCAMP` column for further details.")
  }

  else if (room_price < 0 | room_price > 9990) {
    stop("Please input a room price between 0 and 9990. Refer to the `offerings2020` dataset in the `ROOM_PRICE` column for further details.")
  }

  else if (board_price < 0 | board_price > 9760) {
    stop("Please input a board price between 0 and 9760. Refer to the `offerings2020` dataset in the `BOARD_PRICE` column for further details.")
  }

  else if (app_fee < 0 | app_fee > 99) {
    stop("Please input an app_fee between 0 and 99.")
  }

  else if (yrscoll < 1 & yrscoll != -Inf | yrscoll > 8) {
    stop("Please input an amount of years between 1 and 8, or leave blank for no preference.")
  }

  # Services Arg Error Handling

  if (!is_null(vet_programs)) {
    if (vet_programs == "Yes") {vet_programs <- "Programs Available"}
    else {stop("Please indicate whether you'd like to see institutions with Veteran Programs with 'Yes', or leave blank for no preference")}
  }

  if (!is_null(alt_credits)) {
    if (alt_credits == "Yes") {alt_credits <- "Takes alternate credit"}
    else {"Please indicate whether you'd like to see institutions that take Alternative Credits with 'Yes', or leave blank for no preference"}
  }

  if (!is_null(counsel_service)) {
    if (counsel_service == "Yes") {counsel_service <- "Offers counseling services"}
    else {"Please indicate whether you'd like to see institutions with Counselling Services with 'Yes', or leave blank for no preference"}
  }

  if (!is_null(employ_service)) {
    if (employ_service == "Yes") {employ_service <- "Offers employment services"}
    else {"Please indicate whether you'd like to see institutions with Counselling Services with 'Yes', or leave blank for no preference"}
  }

  if (!is_null(daycare_service)) {
    if (daycare_service == "Yes") {daycare_service <- "Offers daycare services"}
    else {"Please indicate whether you'd like to see institutions with Counselling Services with 'Yes', or leave blank for no preference"}
  }

  if (!is_null(alt_tuition)) {
    if (alt_tuition == "Yes") {alt_tuition <- "Takes alternate tuition plans"}
    else {"Please indicate whether you'd like to see institutions that take Alternative Tuition Plans with 'Yes', or leave blank for no preference"}
  }

  if (!is_null(dist_educ)) {
    if (dist_educ == "Yes") {dist_educ <- "Offers distance education opportunities"}
    else {"Please indicate whether you'd like to see institutions with Distance Education with 'Yes', or leave blank for no preference"}
  }

  # Join dataframes together

  df <- left_join(dir_info2020, fin_aid1920, by = "INSTITUTION_ID")
  df <- left_join(df, fall_enroll2020, by = "INSTITUTION_ID")
  df <- left_join(df, admin2020, by = "INSTITUTION_ID")
  df <- left_join(df, offerings2020, by = "INSTITUTION_ID")
  df <- df[!duplicated(df$INSTITUTION_ID),]

  # Select needed variables for preferences

  df <- df %>%
    select(INSTITUTION, INSTITUTION_ID, PCT_AID, INT_SIZE, BEA_REG, DISAB, WHITE_ENROLL, ENROLL, TOTAL, WHITE_TOTAL,
           UNKNOWN_RACE_ENROLL, UNKNOWN_TOTAL, AFFILIATION, RELIG_AFF, CALSYS, OPENADMP,
           VET_NA, CRED_NA, YRSCOLL, ACAREER_SERV, EMPLOY_SERV, DAYCARE, TUIT_ALT, TUIT_GUARAN, TUIT_PREPAID,
           TUIT_PAY, TUIT_OALT, DIST_EDUC_NA, LIVE_ONCAMP, ROOM_PRICE, BOARD_PRICE, APPLFEEU, APPLFEEG) %>%

  # Mutate Variables

    mutate(ENROLL = ENROLL - UNKNOWN_RACE_ENROLL,
           `Student Diversity` = 1 - WHITE_ENROLL/ENROLL,
           `Student Diversity` = round(`Student Diversity` * 100, 0)) %>%
    mutate(TOTAL = TOTAL - UNKNOWN_TOTAL,
           `Staff Diversity` = 1 - WHITE_TOTAL/TOTAL,
           `Staff Diversity` = round(`Staff Diversity` * 100, 0)) %>%
    mutate(VET_PROGRAMS = if_else(VET_NA == 1, "No Programs Available", "Programs Available")) %>%
    mutate(ALT_CREDIT = if_else(CRED_NA == 1, "Takes no alternate credit", "Takes alternate credit")) %>%
    mutate(TUIT_ALT = if_else(TUIT_ALT != 1 & TUIT_GUARAN != 1 & TUIT_PREPAID != 1 & TUIT_PAY != 1 & TUIT_OALT != 1, "Takes no alternate tuition pplans", "Takes alternate tuition plans")) %>%
    mutate(DIST_EDUC = if_else(DIST_EDUC_NA == 1, "Offers no distance education opportunities", "Offers distance education opportunities")) %>%
    mutate(COUNSEL_SERV = if_else(ACAREER_SERV == 1, "Offers counseling services", "Offers no counseling services")) %>%
    mutate(EMPLOY_SERV = if_else(EMPLOY_SERV == 1, "Offers employment services", "Offers no employment services")) %>%
    mutate(DAYCARE = if_else(DAYCARE == 1, "Offers daycare services", "Offers no daycare services"))

  # Filter preferred institutions

    if (size != -Inf) {df <- filter(df, INT_SIZE == size)}
    if (!is.null(region)) {df <- filter(df, BEA_REG == region)}
    if (affiliation != -Inf) {df <- filter(df, AFFILIATION == affiliation)}
    if (!is_null(relig_affil)) {df <- filter(df, RELIG_AFF == relig_affil)}
    if (!is_null(calsys)) {df <- filter(df, CALSYS == calsys)}
    if (openadmp != -Inf) {df <- filter(df, OPENADMP == openadmp)}
    if (!is_null(vet_programs)) {df <- filter(df, VET_PROGRAMS == vet_programs)}
    if (!is_null(alt_credits)) {df <- filter(df, ALT_CREDIT == alt_credits)}
    if (!is_null(dist_educ)) {df <- filter(df, DIST_EDUC == dist_educ)}
    if (!is_null(counsel_service)) {df <- filter(df, COUNSEL_SERV == counsel_service)}
    if (!is_null(employ_service)) {df <- filter(df, EMPLOY_SERV == employ_service)}
    if (!is_null(daycare_service)) {df <- filter(df, DAYCARE == daycare_service)}
    if (yrscoll != -Inf) {df <- filter(df, YRSCOLL == yrscoll)}
    if (!is_null(alt_tuition)) {df <- filter(df, TUIT_ALT == alt_tuition)}
    if (live_oncamp != -Inf) {df <- filter(df, LIVE_ONCAMP == live_oncamp)}
    if (financial_aid != 0) {df <- filter(df, PCT_AID >= financial_aid)}
    if (diversity_students != 0) {df <- filter(df, `Student Diversity` >= diversity_students)}
    if (diversity_staff != 0) {df <- filter(df, `Staff Diversity` >= diversity_staff)}
    if (disabled != 0) {df <- filter(df, DISAB >= disabled)}
    if (room_price != 0) {df <- filter(df, ROOM_PRICE <= room_price)}
    if (board_price != 0) {df <- filter(df, BOARD_PRICE <= board_price)}
    if (app_fee != 0) {df <- filter(df, APPLFEEU <= app_fee)}
    if (app_fee != 0) {df <- filter(df, APPLFEEG <= app_fee)}

  # Rename for aesthetics

  df <- df %>%
      rename(Institution = INSTITUTION,
            `Institution ID` = INSTITUTION_ID,
           `% of Students Recieved Aid` = PCT_AID,
           `Institution Size` = INT_SIZE,
           `% of Students Disabled` = DISAB,
           `Region` = BEA_REG,
           `Type of Institution` = AFFILIATION,
           `Religious Affiliation` = RELIG_AFF,
           `Calendar System` = CALSYS,
           `Open Admissions Policy` = OPENADMP,
           `Years Required For Entering` = YRSCOLL,
           `Vet Programs` = VET_PROGRAMS,
           `Alternative Credit` = ALT_CREDIT,
           `Alternative Tuition Payment` = TUIT_ALT,
           `Distance Education` = DIST_EDUC,
           `Counseling Services` = COUNSEL_SERV,
           `Employment Services` = EMPLOY_SERV,
           `Daycare Services` = DAYCARE,
           `Live On-Campus` = LIVE_ONCAMP,
           `Room Price` = ROOM_PRICE,
           `Board Price` = BOARD_PRICE,
           `Undergraduate Application Fee` = APPLFEEU,
           `Graduate Application Fee` = APPLFEEG
    ) %>%

  # Select final vars

    select(Institution,
           `Institution ID`,
           `% of Students Recieved Aid`,
           `Institution Size`,
           `Student Diversity`,
           `Staff Diversity`,
           `% of Students Disabled`,
           `Region`,
           `Type of Institution`,
           `Religious Affiliation`,
           `Calendar System`,
           `Open Admissions Policy`,
           `Years Required For Entering`,
           `Vet Programs`,
           `Alternative Credit`,
           `Alternative Tuition Payment`,
           `Distance Education`,
           `Counseling Services`,
           `Employment Services`,
           `Daycare Services`,
           `Live On-Campus`,
           `Room Price`,
           `Board Price`,
           `Undergraduate Application Fee`,
           `Graduate Application Fee`)

  return(df)

}
