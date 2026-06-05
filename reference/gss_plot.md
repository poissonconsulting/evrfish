# Plot Growing Seasons (GSS)

A wrapper on
[`gsdd::gss_plot()`](https://poissonconsulting.github.io/gsdd/reference/gss_plot.html)
to by default plot all Growing Seasons ignoring truncation. For more
information see
[`gsdd::gss_plot()`](https://poissonconsulting.github.io/gsdd/reference/gss_plot.html).

## Usage

``` r
gss_plot(
  x,
  min_length = 60,
  ignore_truncation = TRUE,
  pick = "all",
  latex = FALSE,
  nrow = NULL,
  ncol = NULL,
  msgs = TRUE
)
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

- latex:

  A flag specifying whether to use LaTeX to include degree symbol in
  y-axis label.

- nrow:

  A count of the number of rows to facet by.

- ncol:

  A count of the number of columns to facet by.

- msgs:

  A flag specifying whether to provide messages.

## See also

[`gsdd::gss_plot()`](https://poissonconsulting.github.io/gsdd/reference/gss_plot.html)
and
[`gss()`](https://poissonconsulting.github.io/evrfish/reference/gss.md).

## Examples

``` r
gss_plot(gsdd::temperature_data)
```
