globalVariables(c("dir_info2020", "fin_aid1920", "fall_enroll2020", "admin2020", "INSTITUTION", "PCT_AID", "INT_SIZE",
                  "BEA_REG", "WHITE_ENROLL", "ENROLL", "TOTAL", "WHITE_TOTAL", "UNKNOWN_RACE_ENROLL", "UNKNOWN_TOTAL",
                  "Student Diversity", "Staff Diversity", "Institution", "% of Students Recieved Aid", "Institution Size",
                  "Region", "AFFILIATION", "RELIG_AFF", "CALSYS", "OPENADMP", "VET_NA", "CRED_NA", "YRSCOLL", "REME_SERV", "ACAREER_SERV", "EMPLOY_SERV", "PLACE_SERV",
                  "DAYCARE", "TUIT_ALT", "TUIT_GUARAN", "TUIT_PREPAID", "TUIT_PAY", "TUIT_OALT",
                  "DIST_EDUC_NA", "LIVE_ONCAMP", "ROOM_PRICE", "BOARD_PRICE", "APPLFEEU", "APPLFEEG",
                  "% of Students Disabled", "Type of Institution", "Religious Affiliation",
                  "Calendar System", "Open Admissions Policy", "Vet Programs", "Alternative Credit",
                  "Alternative Tuition Payment", "Distance Education", "Remedial Services", "Counseling Services",
                  "Employment Services", "Placement Services", "Daycare Services", "Live On-Campus", "Room Price",
                  "Board Price", "Undergraduate Application Fee", "Graduate Application Fee", "places", "relig"))

#' Function for Selecting Institution by Preferences
#'
#' Lists the names of institutions that fit inputted preferences
#'
#' @param financial_aid (numeric) Percent of undergraduate students awarded aid.
#' @param size (numeric) Amount of Students attending the institution. (-4 = Any Size; 1	= Under 1,000; 2 = 1,000 - 4,999; 3	= 5,000 - 9,999; 4 = 10,000 - 19,999; 5	= 20,000 and above; -1 = Not reported; -2	= Not applicable)
#' @param region  (character) Region the institution resides.
#' @param diversity_students (numeric) Percent of non-white students.
#' @param diversity_staff  (numeric) Percent of non-white staff.
#' @return A data frame of the institution that fit inputted preferences. For arguments that return percentages, the user can expect institutions that meet that percentage or higher.
#' @examples
#' preferences(70, 2, "New England", 20, 30)
#' preferences(50, 4, "Southwest", 10, 20)
#' @import dplyr
#' @import tidyr
#' @export

preferences2 <- function(financial_aid = 0 , size = -4, region = "Any", diversity_students = 0, diversity_staff = 0,
                         disabled = 0, affiliation = -4, relig_affil = "Any", calsys = "Any", openadmp = -4, vet_programs = "No",
                        alt_credits = "No", yrscoll = -4, services = "No", alt_tuition = "No", dist_educ = "No",
                        live_oncamp = -4, room_price = 0, board_price = 0, app_fee = 0) {

  # Error Handling

  places <- unique(dir_info2020$BEA_REG) %>% append(values = "Any")
  relig <- unique(relig_aff$Numeric_Code) %>% append(values = "Any")

  if (financial_aid < 0 | financial_aid > 100 | diversity_students < 0 | diversity_students > 100 |
      diversity_staff < 0 | diversity_staff > 100 | disabled < 0 | disabled > 100) {
    stop("For `financial_aid`, `diversity_students, `diversity staff` and `disabled`, please input an percent between 0 and 100.")
  }


  else if (size < 1 & size != -4 | size > 5) {
    stop("For `size` please input a number between 1 and 5, or -4 indicating any size.")
  }

  else if (!(region %in% places) == TRUE) {
    stop("Please input a region included in the `dir_info2020` dataframe in the `BEA_REG` column, or input 'Any' for no preference." )
  }

  else if (affiliation < 1 & affiliation != -4 | affiliation > 4) {
    stop("Please input an affiliation between 1 and 4. Refer to the `offerings2020` dataset in the `AFFILIATION` for further details." )
  }

  else if (!(relig_affil %in% relig) == TRUE) {
    stop("Please input a religious affiliation included in the `relig_aff` dataframe, or input 'Any' for no preference.")
  }

  else if (calsys < 1 | calsys > 4 & calsys != "Any") {
    stop("Please input an calendar system between 1 and 4, or -4 for no preference. Refer to the `offerings2020` dataset in the `CALSYS` for further details.")
  }

  else if (openadmp < 1 & openadmp != -4 | openadmp > 2) {
    stop("Please input an open admissions policy as 1, 2, or -4 for no preference. Refer to the `offerings2020` dataset in the `OPENADMP` for further details.")
  }

  else if (room_price < 0 & room_price != -4 | room_price > 9990) {
    stop("Please input a room price between 0 and 9990, or -4 for no preference. Refer to the `offerings2020` dataset in the `ROOM_PRICE` for further details.")
  }

  else if (board_price < 0 & board_price != -4 | board_price > 9760) {
    stop("Please input a board price between 0 and 9760, or -4 for no preference. Refer to the `offerings2020` dataset in the `BOARD_PRICE` for further details.")
  }

  else if (app_fee < 0 & app_fee != -4 | app_fee > 99) {
    stop("Please input an app_fee between 0 and 99, or -4 for no preference.")
  }

  # Services Arg Handling

  if_else(vet_programs == "Yes", vet_programs <- "Programs Available", vet_programs <- "No")
  if_else(alt_credits == "Yes", alt_credits <- "Takes alternate credit", alt_credits <- "No")
  if_else(services == "Yes", services <- 1, services <- 0)
  if_else(alt_tuition == "Yes", alt_tuition <- "Takes alternate tuition payments", alt_tuition <- "No")
  if_else(dist_educ == "Yes", dist_educ <- "Offers distance education opportunities", dist_educ <- "No")

  # Join dataframes together

  df <- left_join(dir_info2020, fin_aid1920, by = "INSTITUTION_ID")
  df <- left_join(df, fall_enroll2020, by = "INSTITUTION_ID")
  df <- left_join(df, admin2020, by = "INSTITUTION_ID")
  df <- left_join(df, offerings2020, by = "INSTITUTION_ID")
  df <- df[!duplicated(df$INSTITUTION_ID),]

  # Select needed variables for preferences

  df <- df %>%
    select(INSTITUTION, PCT_AID, INT_SIZE, BEA_REG, DISAB, WHITE_ENROLL, ENROLL, TOTAL, WHITE_TOTAL,
           UNKNOWN_RACE_ENROLL, UNKNOWN_TOTAL, AFFILIATION, RELIG_AFF, CALSYS, OPENADMP,
           VET_NA, CRED_NA, YRSCOLL, REME_SERV, ACAREER_SERV, EMPLOY_SERV, PLACE_SERV,
           DAYCARE, TUIT_ALT, TUIT_GUARAN, TUIT_PREPAID, TUIT_PAY, TUIT_OALT,
           DIST_EDUC_NA, LIVE_ONCAMP, ROOM_PRICE, BOARD_PRICE, APPLFEEU, APPLFEEG) %>%

  # Mutate Variables

    mutate(ENROLL = ENROLL - UNKNOWN_RACE_ENROLL,
           `Student Diversity` = 1 - WHITE_ENROLL/ENROLL,
           `Student Diversity` = round(`Student Diversity` * 100, 0)) %>%
    mutate(TOTAL = TOTAL - UNKNOWN_TOTAL,
           `Staff Diversity` = 1 - WHITE_TOTAL/TOTAL,
           `Staff Diversity` = round(`Staff Diversity` * 100, 0)) %>%
    mutate(VET_PROGRAMS = if_else(VET_NA == 1, "No Programs Available", "Programs Available")) %>%
    mutate(ALT_CREDIT = if_else(CRED_NA == 1, "Takes no alternate credit", "Takes alternate credit")) %>%
    mutate(TUIT_ALT = if_else(TUIT_ALT != 1 & TUIT_GUARAN != 1 & TUIT_PREPAID != 1 & TUIT_PAY != 1 & TUIT_OALT != 1, "Takes no alternate tuition payments", "Takes alternate tuition payments")) %>%
    mutate(DIST_EDUC = if_else(DIST_EDUC_NA == 1, "Offers no distance education opportunities", "Offers distance education opportunities")) %>%
    mutate(REME_SERV = if_else(REME_SERV == 1, "Offers remedial services", "Offers no remedial services")) %>%
    mutate(ACAREER_SERV = if_else(ACAREER_SERV == 1, "Offers counseling services", "Offers no counseling services")) %>%
    mutate(EMPLOY_SERV = if_else(EMPLOY_SERV == 1, "Offers employment services", "Offers no employment services")) %>%
    mutate(PLACE_SERV = if_else(PLACE_SERV == 1, "Offers placement services", "Offers no placement services")) %>%
    mutate(DAYCARE = if_else(DAYCARE == 1, "Offers daycare services", "Offers no daycare services")) %>%

  # Filter prefered institutions

    filter( if(size != -4) INT_SIZE == size else size == size) %>%
    filter( if(region != "Any") BEA_REG == region else region == region) %>%
    filter( if(affiliation != -4) AFFILIATION == affiliation else affiliation == affiliation) %>%
    filter( if(relig_affil != "Any") RELIG_AFF == relig_affil else relig_affil == relig_affil) %>%
    filter( if(calsys != "Any") CALSYS == calsys else calsys == calsys) %>%
    filter( if(openadmp != -4) OPENADMP == openadmp else openadmp == openadmp) %>%
    filter( if(vet_programs != "No") VET_PROGRAMS == vet_programs else vet_programs == vet_programs) %>%
    filter( if (alt_credits != "No") ALT_CREDIT == alt_credits else alt_credits == alt_credits) %>%
    filter( if (yrscoll != -4) YRSCOLL == yrscoll else yrscoll == yrscoll) %>%
    filter( if (services != "No") REME_SERV == services | ACAREER_SERV == services | EMPLOY_SERV == services | PLACE_SERV == services | DAYCARE == services else services == services) %>%
    filter( if (alt_tuition != "No") TUIT_ALT == alt_tuition else alt_tuition == alt_tuition) %>%
    filter( if (dist_educ != "No") DIST_EDUC == dist_educ else dist_educ == dist_educ) %>%
    filter( if (live_oncamp != -4) LIVE_ONCAMP == live_oncamp else live_oncamp == live_oncamp) %>%
    filter(PCT_AID >= financial_aid & `Student Diversity` >= diversity_students &
       `Staff Diversity` >= diversity_staff & DISAB >= disabled & ROOM_PRICE >= room_price &
        BOARD_PRICE >= board_price & APPLFEEU >= app_fee | APPLFEEG >= app_fee) %>%

  # Rename for aesthetics

    rename(Institution = INSTITUTION,
           `% of Students Recieved Aid` = PCT_AID,
           `Institution Size` = INT_SIZE,
           `% of Students Disabled` = DISAB,
           `Region` = BEA_REG,
           `Type of Institution` = AFFILIATION,
           `Religious Affiliation` = RELIG_AFF,
           `Calendar System` = CALSYS,
           `Open Admissions Policy` = OPENADMP,
           `Vet Programs` = VET_PROGRAMS,
           `Alternative Credit` = ALT_CREDIT,
           `Alternative Tuition Payment` = TUIT_ALT,
           `Distance Education` = DIST_EDUC,
           `Remedial Services` = REME_SERV,
           `Counseling Services` = ACAREER_SERV,
           `Employment Services` = EMPLOY_SERV,
           `Placement Services` = PLACE_SERV,
           `Daycare Services` = DAYCARE,
           `Live On-Campus` = LIVE_ONCAMP,
           `Room Price` = ROOM_PRICE,
           `Board Price` = BOARD_PRICE,
           `Undergraduate Application Fee` = APPLFEEU,
           `Graduate Application Fee` = APPLFEEG
    ) %>%

  # Select final vars

    select(Institution,
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
           `Vet Programs`,
           `Alternative Credit`,
           `Alternative Tuition Payment`,
           `Distance Education`,
           `Remedial Services`,
           `Counseling Services`,
           `Employment Services`,
           `Placement Services`,
           `Daycare Services`,
           `Live On-Campus`,
           `Room Price`,
           `Board Price`,
           `Undergraduate Application Fee`,
           `Graduate Application Fee`)

  return(df)

}
