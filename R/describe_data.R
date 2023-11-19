#' Describe a Dataframe
#'
#' Provides a comprehensive overview of a dataframe, including its structure,
#' summary statistics, the first few rows, column names, and the number of rows and columns.
#' This function is useful for getting a quick and detailed summary of a dataframe's contents and structure.
#'
#' @param data A dataframe that you want to describe.
#'
#' @return This function does not return a value but prints detailed information about the dataframe.
#' @export
#'
#' @examples
#' # Assuming 'Education' is a dataframe
#' describe_data(Education)
describe_data <- function(data) {
  if (!is.data.frame(data)) {
    stop("The input is not a dataframe.")
  }

  cat("Structure of the Data:\n")
  print(str(data))

  cat("\nSummary Statistics:\n")
  print(summary(data))

  cat("\nFirst Few Rows of the Data:\n")
  print(head(data))

  cat("\nColumn Names:\n")
  print(names(data))

  cat("\nNumber of Rows:\n")
  print(nrow(data))

  cat("\nNumber of Columns:\n")
  print(ncol(data))

  return(invisible())
}
#example
describe_data(Education)
