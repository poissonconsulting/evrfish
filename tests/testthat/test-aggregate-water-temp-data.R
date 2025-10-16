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
