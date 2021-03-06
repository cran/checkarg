library(checkargs)
context("isNegativeNumberOrNanVector")

test_that("isNegativeNumberOrNanVector works for all arguments", {
  expect_identical(isNegativeNumberOrNanVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNegativeNumberOrNanVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNegativeNumberOrNanVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeNumberOrNanVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeNumberOrNanVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeNumberOrNanVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeNumberOrNanVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeNumberOrNanVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNegativeNumberOrNanVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeNumberOrNanVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNegativeNumberOrNanVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNegativeNumberOrNanVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNegativeNumberOrNanVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
