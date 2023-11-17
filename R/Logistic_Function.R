#' Logistic Function
#'
#' Computes the logistic function, which is an S-shaped curve.
#' The logistic function is commonly used in logistic regression and
#' returns values between 0 and 1.
#'
#' @param z A numeric vector or value.
#'
#' @return Computed logistic function values.
#' @export
#'
#' @examples
#' logistic_function(0)   # Returns 0.5
#' logistic_function(2)   # Returns a value > 0.5
#' logistic_function(-2)  # Returns a value < 0.5
#'
#' # Vectorized input
#' z_values <- c(-2, 0, 2)
#' logistic_function(z_values)  # Apply logistic function to each element
#'
logistic_function <- function(z) {
  return(1 / (1 + exp(-z)))
}
