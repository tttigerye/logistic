#' Fit Logistic Regression Model
#'
#' Fits a logistic regression model using Gradient Descent.
#'
#' @param x Matrix of predictors.
#' @param y Response variable.
#' @param learning_rate Learning rate for the gradient descent.
#' @param max_iter Maximum number of iterations.
#' @return Model coefficients.
#' @export
#'
#' #' @examples
#' # Generate a synthetic dataset
#' set.seed(123)  # for reproducibility
#' n <- 100  # number of samples
#' x <- matrix(rnorm(n * 2), ncol = 2)  # predictor variables
#' beta <- c(-1, 0.5, 1)  # true coefficients
#' z <- cbind(1, x) %*% beta  # linear predictors
#' pr <- 1 / (1 + exp(-z))  # logistic function
#' y <- rbinom(n, 1, pr)  # response variable

#' # Fit the logistic regression model
#' coefficients <- fit_logistic_regression(x, y)
#' print(coefficients)
fit_logistic_regression <- function(x, y, learning_rate = 0.01, max_iter = 1000) {
  x <- as.matrix(cbind(1, x)) # Adding intercept
  coefficients <- rep(0, ncol(x))

  for (i in 1:max_iter) {
    z <- x %*% coefficients
    predictions <- logistic_function(z)
    gradient <- t(x) %*% (predictions - y) / length(y)
    coefficients <- coefficients - learning_rate * gradient
  }

  return(coefficients)
}