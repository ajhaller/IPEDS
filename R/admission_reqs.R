#' Function for Admission Requirements for an Institution
#'
#' Lists and orders requirements for admission by priority
#'
#' @param institution Institution name. Find these on the `dir_info2020` dataset.
#' @return A tibble of the requirements for the inputted institution.
#' @examples
#' admission_reqs("Smith College")
#' admission_reqs("Yale University")
#' @import dplyr
#' @import tidyr
#' @export
admission_reqs <- function(institution) {

  df <- full_join(adm2020, dir_info2020, by = "INSTITUTION_ID")

  # Error Handling

  if (typeof(institution) != "character") {
    stop("Please make sure the institution you're inputting is a character string.")
  }

  if (!(institution %in% df$INSTITUTION)) {
    stop("This instituion could not be found. Please check the `dir_info2020` dataframe for accurate spelling of your desired institution.")
  }

  # Identify wanted institution

  row <- which(df$INSTITUTION == institution)

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
    pivot_longer(everything(), names_to = "Requirments", values_to = "Priority") %>%
    arrange(desc(Priority))

  # Print requirements

  sen1 <- "The Requirements for"
  name <- institution
  sen2 <- "are:"

  cat(sen1, name, sen2, "\n")
  print(reqs)

}
