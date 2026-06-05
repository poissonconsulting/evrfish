# Classify Water Temperature Data

A wrapper on
[`classify_time_series_data()`](https://poissonconsulting.github.io/evrfish/reference/classify_time_series_data.md)
with the arguments set for water temperature data.

## Usage

``` r
classify_water_temp_data(
  data,
  questionable_min = 0,
  questionable_max = 30,
  erroneous_min = -0.5,
  erroneous_max = 40,
  questionable_rate = 2,
  erroneous_rate = 5,
  questionable_buffer = 1,
  erroneous_buffer = 1,
  gap_range = 5,
  date_time = "temperature_date_time",
  value = "water_temperature"
)
```

## Arguments

- data:

  A data frame.

- questionable_min:

  A numeric value indicating the lower bound of the questionable range
  of temperature values.

- questionable_max:

  A numeric value indicating the upper bound of the questionable range
  of temperature values.

- erroneous_min:

  A numeric value indicating the lower bound of the erroneous range of
  temperature values.

- erroneous_max:

  A numeric value indicating the upper bound of the erroneous range of
  temperature values.

- questionable_rate:

  A numeric value indicating the rate of change (temperature per hour)
  of temperature values that is considered questionable.

- erroneous_rate:

  A numeric value indicating the rate of change (temperature per hour)
  of temperature values that is considered erroneous.

- questionable_buffer:

  A numeric value indicating the buffer in hours for questionable
  values.

- erroneous_buffer:

  A numeric value indicating the number of hours buffer for erroneous
  values.

- gap_range:

  A numeric value indicating the number of hours between two non
  reasonable values that will be coded as questionable or erroneous.

- date_time:

  A string indicating the column name of the POSIXct vector.

- value:

  A string indicating the column name of the value vector.

## Value

A data frame

## Examples

``` r
data <- data.frame(
  temperature_date_time =
    as.POSIXct(c(
      "2021-05-07 08:00:00", "2021-05-07 09:00:00",
      "2021-05-07 10:00:00", "2021-05-07 11:00:00", "2021-05-07 12:00:00",
      "2021-05-07 13:00:00"
    )),
  water_temperature = c(4.124, 4.078, 4.102, 4.189, 4.243, 6.578)
)

classified_data <- classify_water_temp_data(data)
```
