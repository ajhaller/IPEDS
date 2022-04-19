globalVariables(c("dataset", "url", "temp", "out"))

#' Function for importing raw data from IPEDS
#'
#' Outputs data frame with desired information directly from IPEDS
#'
#' @param dataset (character) abbrevation of dataset from IPEDS. For the list of all possible datasets to import, visit the [IPEDS datacenter](https://nces.ed.gov/ipeds/datacenter/DataFiles.aspx?year=-1) and refer to the `Data File` column.
#' @return A dataframe with desired information
#' @examples
#' read_data(IC2020)
#' read_data(HD2020)
#' @import readr
#' @export
read_data <- function(dataset) {
  url <- paste0("https://nces.ed.gov/ipeds/datacenter/data/", dataset, ".zip")
  temp <- tempfile()
  download.file(url, temp)
  out <- read_csv(temp)
  return(out)
}
