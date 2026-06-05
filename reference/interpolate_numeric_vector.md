# Interpolate Numeric Vector

Useful for filling in short runs of missing values in a time series.

## Usage

``` r
interpolate_numeric_vector(x, span = 3, tails = FALSE)
```

## Arguments

- x:

  A double or integer vector of with missing values to fill in using
  linear interpolation.

- span:

  A whole number of the maximum span of missing values to interpolate.
  If a gap exceeds the span none of the values are interpolate.

- tails:

  A flag specifying whether to fill in missing values at the start and
  end by setting them to be the same value as the closest adjacent
  non-missing value.

## Value

A double or integer vector.

## Details

`interpolate_numeric_vector()` is essentially a wrapper on
[`stats::approx()`](https://rdrr.io/r/stats/approxfun.html).

## Examples

``` r
interpolate_numeric_vector(c(1, NA, 4))
#> [1] 1.0 2.5 4.0
interpolate_numeric_vector(c(1L, NA, 4L))
#> [1] 1 2 4
interpolate_numeric_vector(c(1, NA, NA, NA, NA, 3))
#> [1]  1 NA NA NA NA  3
interpolate_numeric_vector(c(1, NA, NA, NA, NA, 3), span = 4)
#> [1] 1.0 1.4 1.8 2.2 2.6 3.0
interpolate_numeric_vector(c(NA, NA, 10, 1, NA))
#> [1] NA NA 10  1 NA
interpolate_numeric_vector(c(NA, NA, 10, 1, NA), tails = TRUE)
#> [1] 10 10 10  1  1
```
