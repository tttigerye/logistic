test_that("logistic regression should be", {
  expect_equal(logistic_function(0), 0.5)
  expect_equal(logistic_function(5), 0.99330715)
})
