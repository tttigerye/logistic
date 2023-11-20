test_that("after test, the standardize result should be:", {
  df = EPL
  expect_equal(standardize(EPL, "points"), standardize(df, "points"))
})

