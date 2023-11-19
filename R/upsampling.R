#' Upsample Imbalanced Data
#'
#' Increases the number of instances in the under-represented class in a binary classification dataset.
#' The function identifies the minority class and upsamples it (by sampling with replacement) to match
#' the size of the majority class. This is typically used to handle imbalanced datasets in classification problems.
#' @param data A dataframe containing the dataset with a binary classification target.
#' @param class_col A string specifying the name of the column in `data` that contains the binary class labels.
#'
#' @return A dataframe where the number of instances in both classes of the target variable are balanced.
#'         The minority class is upsampled to match the number of instances in the majority class.
#' @export
#'
#' @examples
#' # 'Education' is a dataset with an imbalanced binary target column named 'response'
#'
#' balanced_data <- upsampling(Education, "response")
#' head(balanced_data)
#'
#' # Now 'balanced_data' will have an equal number of instances for both classes in 'response' column
upsampling <- function(data, class_col) {
  class_0 <- data[data[[class_col]] == 0, ]
  class_1 <- data[data[[class_col]] == 1, ]
  # Count the number of instances in each class
  n0 <- nrow(class_0)
  n1 <- nrow(class_1)
  # Identify the minority class and upsample it
  if (n0 > n1) {
    class_1_upsampled <- class_1[sample(1:n1, n0, replace = TRUE), ]
    return(rbind(class_0, class_1_upsampled))
  } else {
    class_0_upsampled <- class_0[sample(1:n0, n1, replace = TRUE), ]
    return(rbind(class_0_upsampled, class_1))
  }
}

