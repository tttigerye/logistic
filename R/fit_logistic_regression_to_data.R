#' Fit Logistic Regression Model to Dataset
#'
#' This function fits a logistic regression model to a given dataset. It extracts the specified response variable and predictor variables from the dataset, converts them into the appropriate format, and then uses logistic regression function(in package as well) to compute the model coefficients.
#'
#' @param data A dataframe containing the dataset.
#' @param response_var The name of the response variable in the dataset. The response variable should be binary (0 and 1).
#' @param predictor_vars A vector of names of predictor variables in the dataset.
#'
#' @return A numeric vector of coefficients from the logistic regression model, including the intercept.
#' @export
#'
#' @examples
#' # 'Education' is a dataset with a binary response variable named 'response'
#' # and the first four columns are predictor variables
#' coefficients <- fit_logistic_regression_to_data(Education, "response", names(my_data)[1:4])
#' print(coefficients)

fit_logistic_regression_to_data <- function(data, response_var, predictor_vars) {
  #Ensure response variable is numeric
  y <- as.numeric(data[[response_var]])
  #Convert predictors to a matrix
  x <- as.matrix(data[predictor_vars])
  coefficients <- fit_logistic_regression(x, y)
  return(coefficients)
}
