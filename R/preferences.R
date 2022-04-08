globalVariables(c("dir_info2020", "fin_aid1920", "fall_enroll2020", "admin2020", "INSTITUTION", "PCT_AID", "INT_SIZE",
                  "BEA_REG", "WHITE_ENROLL", "ENROLL", "TOTAL", "WHITE_TOTAL", "UNKNOWN_RACE_ENROLL", "UNKNOWN_TOTAL",
                  "Student Diversity", "Staff Diversity", "Institution", "% of Students Recieved Aid", "Institution Size",
                  "Region"))

#' Function for Selecting Institution by Preferences
#'
#' Lists the names of institutions that fit inputted preferences
#'
#' @param financial_aid (numeric) Percent of undergraduate students awarded aid.
#' @param size (numeric) Amount of Students attending the institution. (1	= Under 1,000; 2 = 1,000 - 4,999; 3	= 5,000 - 9,999; 4 = 10,000 - 19,999; 5	= 20,000 and above; -1 = Not reported; -2	= Not applicable)
#' @param region  (character) Region the institution resides.
#' @param diversity_students (numeric) Percent of non-white students.
#' @param diversity_staff  (numeric) Percent of non-white staff.
#' @return A dataframe of the institution that fit inputted preferences. For arguments that return percentages, the user can expect institutions that meet that percentage or higher.
#' @examples
#' preferences(70, 2, "New England", 20, 40)
#' preferences(50, 4, "Southwest", 10, 20)
#' @import dplyr
#' @import tidyr
#' @export

preferences <- function(financial_aid, size, region, diversity_students, diversity_staff) {

  # Error Handling

  places <- unique(dir_info2020$BEA_REG)

  if (financial_aid < 0 | financial_aid > 100 | diversity_students < 0 | diversity_students > 100 |
      diversity_staff < 0 | diversity_staff > 100) {
    stop("For `financial_aid`, `diversity_students, and `diversity staff`, please input an percent between 0 and 100")
  }

  else if (size < 0 | size > 5) {
    stop("For `size` please input a number between 1 and 5")
  }

  else if (!(region %in% places) == TRUE) {
    stop("Please input a region included in the `dir_info2020` datafram in the `BEA_REG` column")
  }


  # Join dataframes together

  df <- left_join(dir_info2020, fin_aid1920, by = "INSTITUTION_ID")
  df <- left_join(df, fall_enroll2020, by = "INSTITUTION_ID")
  df <- left_join(df, admin2020, by = "INSTITUTION_ID")
  df <- df[!duplicated(df$INSTITUTION_ID),]

  # Calculate percentages & filter by preferences

  df <- df %>%
    select(INSTITUTION, PCT_AID, INT_SIZE, BEA_REG, WHITE_ENROLL, ENROLL, TOTAL, WHITE_TOTAL, UNKNOWN_RACE_ENROLL, UNKNOWN_TOTAL) %>%
    mutate(ENROLL = ENROLL - UNKNOWN_RACE_ENROLL,
           `Student Diversity` = 1 - WHITE_ENROLL/ENROLL,
           `Student Diversity` = round(`Student Diversity` * 100, 0)) %>%
    mutate(TOTAL = TOTAL - UNKNOWN_TOTAL,
           `Staff Diversity` = 1 - WHITE_TOTAL/TOTAL,
           `Staff Diversity` = round(`Staff Diversity` * 100, 0)) %>%
    filter(PCT_AID >= financial_aid & INT_SIZE == size & BEA_REG == region & `Student Diversity` >= diversity_students & `Staff Diversity` >= diversity_staff) %>%
    rename(Institution = INSTITUTION,
           `% of Students Recieved Aid` = PCT_AID,
           `Institution Size` = INT_SIZE,
           `Region` = BEA_REG
    ) %>%
    select(Institution, `% of Students Recieved Aid`, `Institution Size`, `Region`, `Student Diversity`, `Staff Diversity`)

  return(df)

}
