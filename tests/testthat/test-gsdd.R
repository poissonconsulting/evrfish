test_that("gsdd works", {
  gsdd <- gsdd(gsdd::temperature_data)
  expect_snapshot({
    gsdd
  })
})

test_that("gsdd works t2", {
  data <- gsdd::temperature_data
  data$temperature <- data$temperature2
  gsdd <- gsdd(data)
  expect_snapshot({
    gsdd
  })
})

test_that("gsdd returns NA for year when second season truncated", {
  data <- gsdd::temperature_data
  data$temperature <- data$temperature2
  data$temperature[data$date >= as.Date("2019-08-28")] <- NA_real_
  gsdd <- gsdd(data, msgs = FALSE)
  expect_snapshot({
    gsdd
  })
})
