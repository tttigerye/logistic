#' Logistic Regression Model Fitting
#'
#' Fits a logistic regression model to the given dataset using gradient descent.
#' The function optimizes the coefficients of the logistic model to minimize
#' the cost function. The optimization process uses a specified learning rate
#' and stops either after a maximum number of iterations or when convergence
#' is reached based on a tolerance level.
#'
#' @param x A matrix or data frame of predictor variables.
#' @param y A numeric vector of binary response variables (0 or 1) matching the rows of `x`.
#' @param learning_rate The learning rate for the gradient descent optimization (default 0.01).
#' @param max_iter Maximum number of iterations for the gradient descent (default 1000).
#' @param tol Tolerance level for detecting convergence (default 1e-6).
#'
#' @return A list containing:
#'   - `coefficients`: The optimized coefficients of the logistic model.
#'   - `iterations`: The number of iterations performed.
#'   - `cost`: The cost at the final iteration.
#' @export
#'
#' @examples
#' # Generate sample data
#' set.seed(123)
#' x <- matrix(rnorm(100 * 2), ncol = 2)
#' y <- ifelse(x[, 1] + x[, 2] + rnorm(100) > 0, 1, 0)
#'
#' # Fit logistic regression
#' fit_results <- fit_logistic_regression(x, y)
#'
#' # View the results
#' print(fit_results)
fit_logistic_regression <- function(x, y, learning_rate = 0.01, max_iter = 1000, tol = 1e-6) {
  if (length(y) != nrow(x)) {
    stop("Length of y must match the number of rows in x")
  }
  if (learning_rate <= 0 || max_iter <= 0) {
    stop("Learning rate and maximum iterations must be positive")
  }

  x <- as.matrix(cbind(1, x))  # Adding intercept
  coefficients <- rep(0, ncol(x))
  prev_cost <- Inf

  for (i in 1:max_iter) {
    z <- x %*% coefficients
    predictions <- logistic_function(z)
    cost <- -mean(y * log(predictions) + (1 - y) * log(1 - predictions))
    if (abs(prev_cost - cost) < tol) {
      message("Convergence reached at iteration ", i)
      break
    }
    prev_cost <- cost
    gradient <- t(x) %*% (predictions - y) / length(y)
    coefficients <- coefficients - learning_rate * gradient
  }

  return(list(coefficients = coefficients, iterations = i, cost = prev_cost))
}
