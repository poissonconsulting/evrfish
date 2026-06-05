# Calculate Growing Seasons (GSS)

A wrapper on
[`gsdd::gss()`](https://poissonconsulting.github.io/gsdd/reference/gss.html)
to by default get all Growing Seasons ignoring truncation. For more
information see
[`gsdd::gss()`](https://poissonconsulting.github.io/gsdd/reference/gss.html).

## Usage

``` r
gss(x, min_length = 120, ignore_truncation = "end", pick = "all", msgs = TRUE)
```

## Arguments

- x:

  A data frame with two columns `date` and `temperature`. `date`, which
  must be of class Date provides the dates and `temperature` which must
  be a numeric vector provides the mean daily water temperature in
  degrees centigrade.

- min_length:

  A whole number of the minimum number of values to consider.

- ignore_truncation:

  A flag specifying whether to ignore truncation of the mean daily water
  temperature vector or a string of "start", "end", "none" (equivalent
  to FALSE) or "both" (equivalent to TRUE) specifying which type of
  truncation to ignore.

- pick:

  A string specifying whether to pick the "longest", "shortest", "first"
  or "last" 'season' or the season with the "biggest" or "smallest"
  GSDD. By default the returned value is the the GSDD value for the
  "longest" 'season'.

- msgs:

  A flag specifying whether to provide messages.

## See also

[`gsdd::gss()`](https://poissonconsulting.github.io/gsdd/reference/gss.html),
[`gsdd()`](https://poissonconsulting.github.io/evrfish/reference/gsdd.md)
and `gss()`.

## Examples

``` r
gss(gsdd::temperature_data)
#> # A tibble: 1 × 5
#> # Groups:   year [1]
#>    year start_dayte end_dayte   gsdd truncation
#>   <int> <date>      <date>     <dbl> <chr>     
#> 1  2019 1971-03-20  1971-11-07 3899. none      
```
