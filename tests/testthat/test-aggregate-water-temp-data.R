test_that("aggregate_water_temp_data 1 day", {
  data <- data.frame(
    date_time =
    as.POSIXct(c(
      "2021-05-07 00:00:00", "2021-05-07 08:00:00",
      "2021-05-07 16:00:00"
    )),
    water_temperature = c(5, 5, 7)
  )
  agg <- aggregate_water_temp_data(data)
  expect_snapshot_data(agg, "1day")
})

test_that("aggregate_water_temp_data 1 day", {
  data <- data.frame(
    date_time =
    as.POSIXct(c(
      "2021-05-07 00:00:00", "2021-05-07 08:00:00",
      "2021-05-07 16:00:00"
    )),
    water_temperature = c(5, NA, 7)
  )
  agg <- aggregate_water_temp_data(data)
  expect_snapshot_data(agg, "1dayNA")
})

test_that("aggregate_water_temp_data 2 day", {
  data <- data.frame(
    date_time =
    as.POSIXct(c(
      "2021-05-07 00:00:00", "2021-05-07 08:00:00",
      "2021-05-07 16:00:00", "2021-05-09 00:00:00", 
      "2021-05-09 08:00:00",
      "2021-05-09 16:00:00"   )),
    water_temperature = c(5, 5, 7, 4, 10, 20)
  )
  agg <- aggregate_water_temp_data(data)
  expect_snapshot_data(agg, "2day")
})

test_that("aggregate_water_temp_data preserves name", {
  data <- data.frame(
    date_time =
    as.POSIXct(c(
      "2021-05-07 00:00:00", "2021-05-07 08:00:00",
      "2021-05-07 16:00:00"
    )),
    values = c(5, 5, 7)
  )
  agg <- aggregate_water_temp_data(data, value = "values")
  expect_snapshot_data(agg, "1dayvalues")
})
