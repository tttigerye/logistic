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
#' @examples
#' # Generate a synthetic dataset
#' set.seed(123)
#' n <- 100  # number of samples
#' predictor variables
#' x1 <- rnorm(n)
#' x2 <- rnorm(n)
#' X <- cbind(x1, x2)
#' beta0 <- 0.5  # Intercept
#' beta1 <- 1.5  # Coefficient for x1
#' beta2 <- -1   # Coefficient for x2
#' Calculate the probability using the logistic function
#' logit_p <- beta0 + beta1 * x1 + beta2 * x2
#' p <- 1 / (1 + exp(-logit_p))
#' y <- rbinom(n, 1, p)

#' # Fit the logistic regression model
#' coefficients <- fit_logistic_regression(x, y)
#' print(coefficients)
#'           [,1]
#'[1,]  0.1782793
#'[2,]  1.2036723
#'[3,] -0.7532356
#'
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
