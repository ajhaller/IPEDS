globalVariables(c("adm2020", "dir_info2020", "hs_gpa", "hs_record", "adm_tscores", "test_eng_FL", "hs_rank",
                  "cprep_program", "competencies", "recs", "other_test", "Priority"))

#' Function for Admission Requirements for an Institution
#'
#' Lists and orders requirements for admission by priority
#'
#' @param institution_id Institution ID. Find these on the `dir_info2020` dataset.
#' @return A tibble of the requirements for the inputted institution.
#' @examples
#' admission_reqs(167835)
#' admission_reqs(130794)
#' @import dplyr
#' @import tidyr
#' @export
admission_reqs <- function(institution_id) {

  df <- full_join(adm2020, dir_info2020, by = "INSTITUTION_ID")

  # Error Handling

  if (typeof(institution_id) != "double") {
    stop("Please make sure the institution you're inputting is numeric.")
  }

  if (!(institution_id %in% df$INSTITUTION_ID)) {
    stop("This instituion could not be found. Please check the `dir_info2020` dataframe for your desired instituion id.")
  }

  # Identify wanted institution

  row <- which(df$INSTITUTION_ID == institution_id)

  # Extract and order requirements for admission

  reqs <- adm2020[row, 2:10] %>%
    rename(`High School GPA` = hs_gpa,
           `High School Record` = hs_record,
           `Admission Test Scores` = adm_tscores,
           `Test of English as a Foreign Language` = test_eng_FL,
           `High School Rank` = hs_rank,
           `Completion of College-Prepatory Program` = cprep_program,
           `Formal Demonstration of Competencies` = competencies,
           `Recommendations` = recs,
           `Other Tests` = other_test) %>%
    pivot_longer(everything(), names_to = "Requirements", values_to = "Priority") %>%
    arrange(desc(Priority))

  # Return requirements

  return(reqs)

}
