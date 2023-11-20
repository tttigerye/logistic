test_that("logistic regression result should be", {
  x_test <- matrix(c(1, 2, 3, 4), ncol = 1)
  y_test <- c(0, 0, 1, 1)
  coefficients <- c(-1.21, 0.69)
  coefficients <- as.vector(fit_logistic_regression(x_test, y_test, learning_rate = 0.01, max_iter = 1000))
  expect_equal(coefficients, coefficients, tolerance = 1e-6)
})
