# Classify Time Series Data

Time series data will be either classified as reasonable, questionable,
or erroneous in the status_id column or NA if the value is missing.

## Usage

``` r
classify_time_series_data(
  data,
  ...,
  date_time = "date_time",
  value = "value",
  questionable_min = 0,
  questionable_max = 30,
  erroneous_min = -0.5,
  erroneous_max = 40,
  questionable_rate = 2,
  erroneous_rate = 5,
  questionable_buffer = 1,
  erroneous_buffer = 1,
  gap_range = 5
)
```

## Arguments

- data:

  A data frame.

- ...:

  These dots are for future extensions and must be empty.

- date_time:

  A string indicating the column name of the POSIXct vector.

- value:

  A string indicating the column name of the value vector.

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

## Value

The original data frame sorted by the date time with a status_id column.

## Details

The function only works on a single time series.

The function will error if there are missing or duplicated date time.

The data is processed by:

1.  Classifying the time series values based on their values
    (\`questionable_min, questionable_max, erroneous_min,
    erroneous_max).

2.  The rate of change to each value is then calculated and the values
    are classified based on the absolute rate of change
    (questionable_rate, erroneous_rate).

3.  Adjacent values to all questionable/erroneous are then coded as
    questionable/erroneous.

4.  Next any value within the time buffer of a questionable/erroneous
    value is classified as questionable/erroneous (questionable_buffer,
    erroneous_buffer).

5.  In addition, ignoring the buffer, reasonable values between two
    questionable/erroneous values are coded as questionable if the
    hourly duration of the gap is within the (gap_range).

## Examples

``` r
data <- data.frame(
  date_time =
    as.POSIXct(c(
      "2021-05-07 08:00:00", "2021-05-07 09:00:00",
      "2021-05-07 10:00:00", "2021-05-07 11:00:00", "2021-05-07 12:00:00",
      "2021-05-07 13:00:00"
    )),
  water_temperature = c(4.124, 4.078, 4.102, 4.189, 4.243, 6.578)
)

classify_time_series_data(data, value = "water_temperature")
```
