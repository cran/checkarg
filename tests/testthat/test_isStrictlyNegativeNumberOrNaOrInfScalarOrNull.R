library(checkargs)
context("isStrictlyNegativeNumberOrNaOrInfScalarOrNull")

test_that("isStrictlyNegativeNumberOrNaOrInfScalarOrNull works for all arguments", {
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrNaOrInfScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
