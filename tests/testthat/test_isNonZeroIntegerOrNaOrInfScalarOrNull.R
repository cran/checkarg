library(checkargs)
context("isNonZeroIntegerOrNaOrInfScalarOrNull")

test_that("isNonZeroIntegerOrNaOrInfScalarOrNull works for all arguments", {
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroIntegerOrNaOrInfScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroIntegerOrNaOrInfScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
