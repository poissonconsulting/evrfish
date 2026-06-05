# Aggregate Water Temperature Data

Aggregates subdaily water temperature data to mean daily water
temperature. If the water temperature data spans less than the
min_coverage than a missing value is return instead.

## Usage

``` r
aggregate_water_temp_data(
  data,
  ...,
  min_coverage = 0.875,
  date_time = "date_time",
  value = "water_temperature"
)
```

## Arguments

- data:

  A data frame.

- ...:

  These dots are for future extensions and must be empty.

- min_coverage:

  A numeric value of the minimum coverage as a proportion.

- date_time:

  A string indicating the column name of the POSIXct vector.

- value:

  A string indicating the column name of the value vector.

## Value

A data frame with a date column and update water temperature column.

## Details

The min_coverage is converted into the minimum number of non-missing
values in each day based on how many values of the shortest time
interval within the time series are required to achieve the minimum
coverage. For example if the date times are every 15 minutes then 24 /
0.25 = 96 values are required for 100% coverage and 84 values are
required for the default 87.5% minimum coverage.

## Examples

``` r
data <- data.frame(
  date_time =
    as.POSIXct(c(
      "2021-05-07 00:00:00", "2021-05-07 08:00:00",
      "2021-05-07 16:00:00"
    )),
  water_temperature = c(5, 5, 7)
)

aggregate_water_temp_data(data)
#> [1] 3
#> # A tibble: 1 × 2
#>   date       water_temperature
#>   <date>                 <dbl>
#> 1 2021-05-07              5.67
```
