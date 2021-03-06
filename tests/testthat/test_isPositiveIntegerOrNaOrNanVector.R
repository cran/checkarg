library(checkargs)
context("isPositiveIntegerOrNaOrNanVector")

test_that("isPositiveIntegerOrNaOrNanVector works for all arguments", {
  expect_identical(isPositiveIntegerOrNaOrNanVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isPositiveIntegerOrNaOrNanVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNaOrNanVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNaOrNanVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNaOrNanVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNaOrNanVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNaOrNanVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaOrNanVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNaOrNanVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaOrNanVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
