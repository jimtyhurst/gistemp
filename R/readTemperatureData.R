
#' Reads surface temperature data from a CSV file.
#' @param filePath String file name, either fully qualified or relative
#'     to the current working directory.
#' @return tibble with the data.
#' @export
readTemperatureData <- function(filePath) {
  df <- readr::read_csv(filePath)
  return(df)
}
