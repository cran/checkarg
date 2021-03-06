library(checkargs)
context("isNonZeroNumberOrNaOrNanScalar")

test_that("isNonZeroNumberOrNaOrNanScalar works for all arguments", {
  expect_identical(isNonZeroNumberOrNaOrNanScalar(NULL, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(TRUE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(FALSE, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(NA, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(0, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(-1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(-0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(0.1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(1, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(NaN, stopIfNot = FALSE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(-Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(Inf, stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar("", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar("X", stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(TRUE, FALSE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(FALSE, TRUE), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(NA, NA), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(0, 0), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(-1, -2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(-0.1, -0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(0.1, 0.2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(1, 2), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(NaN, NaN), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(-Inf, -Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c(Inf, Inf), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c("", "X"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(c("X", "Y"), stopIfNot = FALSE, message = NULL, argumentName = NULL), FALSE)
  expect_error(isNonZeroNumberOrNaOrNanScalar(NULL, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(TRUE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(FALSE, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroNumberOrNaOrNanScalar(NA, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroNumberOrNaOrNanScalar(0, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_identical(isNonZeroNumberOrNaOrNanScalar(-1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(-0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(0.1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(1, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_identical(isNonZeroNumberOrNaOrNanScalar(NaN, stopIfNot = TRUE, message = NULL, argumentName = NULL), TRUE)
  expect_error(isNonZeroNumberOrNaOrNanScalar(-Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(Inf, stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar("", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar("X", stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(TRUE, FALSE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(FALSE, TRUE), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(NA, NA), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(0, 0), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(-1, -2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(-0.1, -0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(0.1, 0.2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(1, 2), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(NaN, NaN), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(-Inf, -Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c(Inf, Inf), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c("", "X"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
  expect_error(isNonZeroNumberOrNaOrNanScalar(c("X", "Y"), stopIfNot = TRUE, message = NULL, argumentName = NULL))
})
