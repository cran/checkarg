library(checkargs)
context("isPositiveIntegerOrNaScalar")

test_that("isPositiveIntegerOrNaScalar works for all arguments", {
  expect_identical(isPositiveIntegerOrNaScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isPositiveIntegerOrNaScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isPositiveIntegerOrNaScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNaScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isPositiveIntegerOrNaScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNaScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isPositiveIntegerOrNaScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isPositiveIntegerOrNaScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isPositiveIntegerOrNaScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
