globalVariables(c("dir_info2020", "fin_aid1920", "adm2020", "offerings2020","INSTITUTION_ID",
                  "INSTITUTION", "INT_SIZE", "FT_enroll", "PT_enroll", "AVG_AID", "AVG_AWRD",
                  "CITY", "STATE", "BEA_REG", "LOCALE", "CALSYS", "adm_tscores", "R_B_PRICE",
                  "APPLFEEU", "ACADEMIC", "AP", "DUAL", "STUDY_ABROAD", "LIVE_ONCAMP","MEALSWK",
                  "Institution", "Size", "Full Time Students", "Part Time Students",
                  "Average Aid Awarded", "Average Award Size", "City", "State",
                  "Region", "Urbanization", "Calendar System", "Admission Test Scores",
                  "Room & Board Cost", "Application Fee", "Degrees Offered", "AP Credit Accepted",
                  "Dual Enrollment Credit Accepted", "Study Abroad Programs", "Meals per Week",
                  "Freshman Required to Live on Campus"
))

#' Function for Comparing (2) Institutions Side by Side, Chosen by User Input
#'
#' Outputs Table Comparing Various Qualities Each Institution Has
#'
#' @param Institution1_ID (numeric) 1st Institution chosen by user to be compared against Institution2
#' @param Institution2_ID (numeric) 2nd Institution chosen by user to be compared against Institution1


#' @return A 2 column table with the qualities of the 2 institutions being compared in the rows.
#' @examples
#' compare_int(Institution1_ID = 100654, Institution2_ID = 100663)
#' compare_int(167835, 168218)
#' @import dplyr
#' @import tidyr
#' @export
compare_int <- function(Institution1_ID, Institution2_ID) {


  # Errors

  schools <- unique(dir_info2020$INSTITUTION_ID)


  if (Institution1_ID < 100000  | Institution1_ID > 500000 | !(Institution1_ID %in% schools) == TRUE) {
      stop("For `Institution1_ID` please input a valid Institution ID from `dir_info2020`")
      }

  else if (Institution2_ID < 100000 | Institution2_ID > 500000 | !(Institution2_ID %in% schools) == TRUE) {
          stop("For `Institution2_ID` please input a valid Institution ID from `dir_info2020`")
    }

  # combine dataframes into one

  c_df <- left_join(fin_aid1920, adm2020, by = "INSTITUTION_ID")

  c_df <- left_join(c_df, offerings2020, by = "INSTITUTION_ID")

  c_df <- left_join(c_df, dir_info2020, by = "INSTITUTION_ID")

  c_df <- c_df[!duplicated(c_df$INSTITUTION_ID),]


  # variables in dataframe

  c_df <- c_df %>%
    select("INSTITUTION_ID", "INSTITUTION", "INT_SIZE", "FT_enroll", "PT_enroll", "AVG_AID", "AVG_AWRD", "CITY", "STATE",
           "BEA_REG", "LOCALE", "CALSYS", "adm_tscores", "R_B_PRICE", "APPLFEEU", "ACADEMIC", "AP",
           "DUAL", "STUDY_ABROAD", "LIVE_ONCAMP", "MEALSWK"
    )



  c_df <- c_df %>%
    rename(
      "Institution ID" = "INSTITUTION_ID",
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
      "Calendar System" = "CALSYS",
      "Admission Test Scores" = "adm_tscores",
      "Room & Board Cost" = "R_B_PRICE",
      "Application Fee" = "APPLFEEU",
      "Degrees Offered" = "ACADEMIC",
      "AP Credit Accepted" = "AP",
      "Dual Enrollment Credit Accepted" = "DUAL",
      "Study Abroad Programs" = "STUDY_ABROAD",
      "Freshman Required to Live on Campus" = "LIVE_ONCAMP",
      "Meals per Week" = "MEALSWK"

    ) %>%

    select("Institution ID",
           "Institution",
           "Size",
           "Full Time Students",
           "Part Time Students",
           "Average Aid Awarded",
           "Average Award Size",
           "City",
           "State",
           "Region",
           "Urbanization",
           "Calendar System",
           "Admission Test Scores",
           "Room & Board Cost",
           "Degrees Offered",
           "AP Credit Accepted",
           "Dual Enrollment Credit Accepted",
           "Study Abroad Programs",
           "Freshman Required to Live on Campus",
           "Meals per Week"
    )


  c_df2 <- c_df %>%
    filter(`Institution ID` == Institution1_ID | `Institution ID` == Institution2_ID)

  c_df2 <- c_df2 %>%
    mutate(`Degrees Offered` = ifelse(`Degrees Offered` == 1, "Yes", "No"),
           `AP Credit Accepted`= ifelse(`AP Credit Accepted` == 1, "Yes", "No"),
           `Dual Enrollment Credit Accepted`= ifelse(`Dual Enrollment Credit Accepted` == 1, "Yes", "No"),
           `Study Abroad Programs` = ifelse(`Study Abroad Programs` == 1, "Yes", "No"),
           `Freshman Required to Live on Campus` = ifelse(`Freshman Required to Live on Campus` == 1, "Yes", "No")
           )

  df2 <- data.frame(t(c_df2[-1]))
  colnames(df2) <- c_df2[, 1]

  colnames(df2) <- df2[1,]
  df2 <- df2[-1,]

  return(df2)

}

