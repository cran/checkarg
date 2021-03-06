library(checkargs)
context("isBooleanVector")

test_that("isBooleanVector works for all arguments", {
  expect_identical(isBooleanVector(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isBooleanVector(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isBooleanVector(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isBooleanVector(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isBooleanVector(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isBooleanVector(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isBooleanVector(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isBooleanVector(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isBooleanVector(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isBooleanVector(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(1, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isBooleanVector(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isBooleanVector(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isBooleanVector(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isBooleanVector(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
