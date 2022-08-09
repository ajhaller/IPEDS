globalVariables(c("dataset", "url", "temp", "out", "IC2020", "HD2020"))

#' Function for importing raw data from IPEDS
#'
#' Outputs data frame with desired information directly from IPEDS
#'
#' @param dataset (character) abbreviation of dataset from IPEDS. For the list of all possible datasets to import, visit the [IPEDS datacenter](https://nces.ed.gov/ipeds/datacenter/DataFiles.aspx?year=-1) and refer to the `Data File` column.
#' @return A dataframe with desired information
#' @examples
#' \donttest{
#' read_data("IC2020")
#' }
#' @import readr
#' @importFrom utils download.file
#' @export
read_data <- function(dataset) {

  #Errors

  if(inherits(dataset, "character") == FALSE) {
    stop("For 'dataset' please input a valid dataset abbreviation from IPEDS. For more information please refer to the man file.")
  }

  #Read url
  url <- paste0("https://nces.ed.gov/ipeds/datacenter/data/", dataset, ".zip")
  temp <- tempfile()

  #Error catch from url

  out <- tryCatch({
    download.file(url, temp)
  },
  error = function(e){
    message(paste("This URL may not exist:", url))
    message("This was the error message")
    message(e)
    return(NA)
  },
  warning = function(w){
    message(paste("This URL threw a warning:", url))
    message("This was the warning message:")
    message(w)
    return(NULL)
  },
  finally = {
    message(paste("This URL has been processed:", url))
  })

  #Finish function
  out <- read_csv(temp)
  return(out)
}
