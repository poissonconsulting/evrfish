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

test_that("aggregate_water_temp_data 1 day NA", {
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

test_that("aggregate_water_temp_data 1 day NA low coverage", {
  data <- data.frame(
    date_time =
    as.POSIXct(c(
      "2021-05-07 00:00:00", "2021-05-07 08:00:00",
      "2021-05-07 16:00:00"
    )),
    water_temperature = c(5, NA, 7)
  )
  agg <- aggregate_water_temp_data(data, min_coverage = 0.6)
  expect_snapshot_data(agg, "1day6")
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

test_that("aggregate_water_temp_data 2 day super tight", {
  data <- data.frame(
    date_time =
    as.POSIXct(c(
      "2021-05-07 00:00:00", "2021-05-07 08:00:00",
      "2021-05-07 16:00:00", "2021-05-09 00:00:00", 
      "2021-05-09 08:00:00",
      "2021-05-09 09:00:00"   )),
    water_temperature = c(5, 5, 7, 4, 10, 20)
  )
  agg <- aggregate_water_temp_data(data)
  expect_snapshot_data(agg, "2daysupertight")
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

test_that("aggregate_water_temp_data 15 min", {
  data <- data.frame(
    date_time =
      seq(as.POSIXct("2021-05-07 00:00:00"), as.POSIXct("2021-05-09 23:45:00"), length.out = 288),
    values = seq(-10,10, length.out = 288)
  )
  agg <- aggregate_water_temp_data(data, value = "values")
  expect_snapshot_data(agg, "3day15min")
})
