# Calculate Growing Degree Days (GDD)

A wrapper on
[`gsdd::gdd()`](https://poissonconsulting.github.io/gsdd/reference/gdd.html)
to get the Growing Degree Days up to a date for the longest growing
season.

## Usage

``` r
gdd(x, end_date = as.Date("1972-09-30"), min_length = 60, msgs = TRUE)
```

## Arguments

- x:

  A data frame with two columns `date` and `temperature`. `date`, which
  must be of class Date provides the dates and `temperature` which must
  be a numeric vector provides the mean daily water temperature in
  degrees centigrade.

- end_date:

  A Date scalar of the last date within each year to consider (the year
  is ignored).

- min_length:

  A whole number of the minimum number of values to consider.

- msgs:

  A flag specifying whether to provide messages.

## See also

[`gsdd::gdd()`](https://poissonconsulting.github.io/gsdd/reference/gdd.html),
[`gsdd()`](https://poissonconsulting.github.io/evrfish/reference/gsdd.md)
and
[`gss()`](https://poissonconsulting.github.io/evrfish/reference/gss.md).

## Examples

``` r
gdd(gsdd::temperature_data)
#> # A tibble: 1 × 2
#>    year   gdd
#>   <int> <dbl>
#> 1  2019 3605.
```
