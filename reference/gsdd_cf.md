# Calculate Growing Season Degree Days (GSDD)

Soft-deprecated for
[`gsdd::gsdd_vctr()`](https://poissonconsulting.github.io/gsdd/reference/gsdd_vctr.html).

## Usage

``` r
gsdd_cf(x, ignore_truncation = FALSE, min_length = 120, msgs = TRUE)
```

## Arguments

- x:

  A numeric vector of the mean daily water temperature values for the
  period of interest in C.

- ignore_truncation:

  A flag specifying whether to ignore truncation of the mean daily water
  temperature vector or a string of "start", "end", "none" (equivalent
  to FALSE) or "both" (equivalent to TRUE) specifying which type of
  truncation to ignore.

- min_length:

  A whole number of the minimum number of values to consider.

- msgs:

  A flag specifying whether to provide messages.

## Value

A non-negative real number of the GSDD.

## See also

[`gsdd::gsdd_vctr()`](https://poissonconsulting.github.io/gsdd/reference/gsdd_vctr.html)

## Examples

``` r
gsdd_cf(c(rep(1, 10), rep(10, 20), rep(1, 200)))
#> Warning: `gsdd_cf()` was deprecated in evrfish 0.1.2.
#> ℹ Please use `gsdd::gsdd_vctr()` instead.
#> [1] 208
gsdd_cf(gsdd::temperature_data$temperature)
#> [1] 3898.806
```
