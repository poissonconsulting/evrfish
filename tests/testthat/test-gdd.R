test_that("gdd works", {
  gdd <- gdd(gsdd::temperature_data)
  expect_snapshot({
    gdd
  })
})

test_that("gsdd works t2", {
  data <- gsdd::temperature_data
  data$temperature <- data$temperature2
  gdd <- gsdd::gdd(
    data,
    end_date = as.Date("1972-09-30"),
    min_length = 60,
    pick = "longest"
  )
  expect_snapshot({
    gdd
  })

  gdd_all <- gdd(data)
  expect_snapshot({
    gdd_all
  })
})

test_that("gdd returns NA for year when second season truncated", {
  data <- gsdd::temperature_data
  data$temperature <- data$temperature2
  data$temperature[data$date >= as.Date("2019-08-28")] <- NA_real_
  gdd <- gdd(data, msgs = FALSE)
  expect_snapshot({
    gdd
  })
})
