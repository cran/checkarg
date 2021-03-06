library(checkargs)
context("isPositiveNumberOrNaScalarOrNull")

test_that("isPositiveNumberOrNaScalarOrNull works for all arguments", {
  expect_identical(isPositiveNumberOrNaScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveNumberOrNaScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveNumberOrNaScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveNumberOrNaScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveNumberOrNaScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveNumberOrNaScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveNumberOrNaScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveNumberOrNaScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
