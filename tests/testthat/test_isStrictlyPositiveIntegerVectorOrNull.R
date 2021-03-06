library(checkargs)
context("isStrictlyPositiveIntegerVectorOrNull")

test_that("isStrictlyPositiveIntegerVectorOrNull works for all arguments", {
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerVectorOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerVectorOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyPositiveIntegerVectorOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyPositiveIntegerVectorOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
