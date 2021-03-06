library(checkargs)
context("isNegativeNumberScalar")

test_that("isNegativeNumberScalar works for all arguments", {
  expect_identical(isNegativeNumberScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNegativeNumberScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeNumberScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeNumberScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
