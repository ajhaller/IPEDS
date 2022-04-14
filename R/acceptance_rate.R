globalVariables(c("acceptance_rate", "institution_id", "row", "adm2020", "INSTITUTION_ID", "institution",
                  "acceptance", "sen1", "sen2"))


#' Function for getting the acceptance rate by institution
#'
#' Provides the acceptance rate for the inputted institution
#'
#' @param institution_id Institution id. Find matching name and ids in the `dir_info2020` dataset.
#' @return A statement with the acceptance rate for inputted institution.
#' @examples
#' acceptance_rate(167835)
#' acceptance_rate(100830)
#' @import dplyr
#' @importFrom emoji emoji
#' @export

acceptance_rate <- function (institution_id) {

  row <- which(adm2020$INSTITUTION_ID == institution_id)

  df <- left_join(adm2020, dir_info2020, by = "INSTITUTION_ID")
  institution <- df$INSTITUTION[row]

  # Error Handling

  list <- df$INSTITUTION_ID

  if (!(institution_id %in% list) | !(class(institution_id) == "numeric")) {
    stop("Please input an institution id (numeric) listed in the `dir_info2020` dataset.")
  }

  acceptance <- round(adm2020$ADMSSN[row]/adm2020$APPLCN[row] * 100, 0)

  sen1 <- "The Acceptance Rate for"
  sen2 <- "is"
  cat(emoji("star"), sen1, institution, sen2, acceptance, '%', emoji("star"))

}
