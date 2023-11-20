test_that("logistic regression result should be", {
  x_test <- matrix(c(1, 2, 3, 4), ncol = 1)
  y_test <- c(0, 0, 1, 1)
  expected_coefficients <- c(-1.21, 0.69)

  # Test
  expect_equal(fit_logistic_regression(x_test, y_test), expected_coefficients, tolerance = 1e-6)
})
