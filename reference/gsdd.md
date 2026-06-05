# Calculate Growing Season Degree Days (GSDD)

A wrapper on
[`gsdd::gsdd()`](https://poissonconsulting.github.io/gsdd/reference/gsdd.html)
to get the Growing Season Degree Days for the longest growing season.

## Usage

``` r
gsdd(x, min_length = 120, msgs = TRUE)
```

## Arguments

- x:

  A data frame with two columns `date` and `temperature`. `date`, which
  must be of class Date provides the dates and `temperature` which must
  be a numeric vector provides the mean daily water temperature in
  degrees centigrade.

- min_length:

  A whole number of the minimum number of values to consider.

- msgs:

  A flag specifying whether to provide messages.

## See also

[`gsdd::gsdd()`](https://poissonconsulting.github.io/gsdd/reference/gsdd.html),
`gsdd()` and
[`gss()`](https://poissonconsulting.github.io/evrfish/reference/gss.md).

## Examples

``` r
gsdd(gsdd::temperature_data)
#> # A tibble: 1 × 2
#>    year  gsdd
#>   <int> <dbl>
#> 1  2019 3899.
```
