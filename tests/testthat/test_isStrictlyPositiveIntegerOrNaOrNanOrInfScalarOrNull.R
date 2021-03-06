library(checkargs)
context("isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull")

test_that("isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull works for all arguments", {
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerOrNaOrNanOrInfScalarOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
