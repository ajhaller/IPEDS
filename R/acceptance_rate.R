globalVariables(c("acceptance_rate", "institution_id", "row", "adm2021", "INSTITUTION_ID", "institution",
                  "acceptance", "df"))


#' Function for getting the acceptance rate by institution
#'
#' Provides the acceptance rate for the inputted institution
#'
#' @param institution_id Institution id. Find matching name and ids in the `dir_info2021` dataset.
#' @return A statement with the acceptance rate for inputted institution.
#' @examples
#' acceptance_rate(167835)
#' acceptance_rate(100830)
#' @import dplyr
#' @export

acceptance_rate <- function (institution_id) {

  row <- which(adm2021$INSTITUTION_ID == institution_id)

  df <- left_join(adm2021, dir_info2021, by = "INSTITUTION_ID")
  institution <- df$INSTITUTION[row]

  # Error Handling

  list <- df$INSTITUTION_ID

  if (!(institution_id %in% list) | (inherits(institution_id, "numeric") == FALSE)) {
    stop("Please input an institution id (numeric) listed in the `adm2021` dataset.")
  }

  acceptance <- round(adm2021$ADMSSN[row]/adm2021$APPLCN[row] * 100, 0)


  df <- tibble(Institution = c(institution),
                   Acceptance_Rate = c(acceptance))

  return(df)
}
