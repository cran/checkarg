library(checkargs)
context("isStrictlyNegativeNumberOrInfVectorOrNull")

test_that("isStrictlyNegativeNumberOrInfVectorOrNull works for all arguments", {
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isStrictlyNegativeNumberOrInfVectorOrNull(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isStrictlyNegativeNumberOrInfVectorOrNull(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
