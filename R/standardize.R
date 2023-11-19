#' Standardize Specified Columns in a Dataset
#'
#' This function standardizes specified columns in a dataset. Standardization is performed
#' by subtracting the mean and dividing by the standard deviation for each value in the column.
#' This process transforms the data in each specified column to have a mean of 0 and a standard
#' deviation of 1, which is often useful for data analysis and machine learning.
#'
#' @param data A dataframe containing the dataset to be standardized.
#' @param columns A vector of strings specifying the names of the columns to be standardized.
#'
#' @return The original dataframe with specified columns standardized.
#' @export
#'
#' @examples
#' # Assuming 'EPL' is dataset in this package with columns: 'points', 'goals_scored', 'goals_conceded'
#' columns_to_standardize <- c("points", "goals_scored", "goals_conceded")
#' standardized_EPL <- standardize(EPL, columns_to_standardize)
#' head(standardized_EPL)
standardize <- function(data, columns) {
  if (!all(columns %in% names(data))) {
    stop("Some specified columns not found in the dataset.")
  }
  # Standardize
  for (col in columns) {
    data[[col]] <- (data[[col]] - mean(data[[col]], na.rm = TRUE)) / sd(data[[col]], na.rm = TRUE)
  }
  return(data)
}
