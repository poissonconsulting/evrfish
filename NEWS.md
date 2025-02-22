<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# evrfish 0.5.0.9000

- `gss()` now only ignores end truncation by default.

- Switching to dplyr as duckplyr is undergoing some updates (#33).


# evrfish 0.5.0

- Added `date_atus()` from `gsdd` package to calculate the date on which a specified number of accumulated thermal units are exceeded.
- `gss_plot()` now has `min_length = 60` by default.


# evrfish 0.4.0

- Added `gss_plot()` to plot temperature time series and season(s).


# evrfish 0.3.0

- Added `gss()` function from `gsdd` package to calculate growing seasons.


# evrfish 0.2.1

- Set lower default `min_length = 120` for `gsdd_cf()`.

# evrfish 0.2.0

- Added `gsdd()` and `gdd()` to calculate Growing Season Degree Days and Growing Degree Days for a data frame for longest season (following decision by Ecofish and Lotic).
- Soft-deprecated `gsdd_cf()` for `gsdd::gsdd_vctr()` which both calculate Growing Season Degree Days for a vector.
- Removed `simulated_data`.

# evrfish 0.1.0

## Additions

- Added `interpolate_numeric_vector()` function to fill in missing values using linear interpolation.
- Added `freshwaterfish` data from `fishbc` package to provide British Columbian and Alberta fish codes as well as taxonomy and conservation status.

## Modifications

### `gsdd_cf()` Function

- Uses the longest sequence on non-missing values, which must be at least 184 elements (otherwise returns `NA`), to calculate the Growing Season Degree Days.
- Returns the sum of the Growing Season Degree Days for all the growing 'seasons' although the user can use the `pick` argument to specify whether to instead return the GSDD value for the `"biggest"`, `"smallest"`, `"longest"`, `"shortest"`, `"first"` or `"last"` 'season' within the sequence.
- `ignore_truncation` argument of `gssd_cf()` now accepts `"start"` and `"end"` instead of
`"left"` and `"right"`.
- Replaced `quiet = FALSE` argument with `msgs = TRUE`.

# evrfish 0.0.1

- Added `gsdd_cf()` function which implements Growing Season Degree Days
algorithm as described by Coleman and Fausch (2007)
- Added `classify_water_temp_data()` function to classify raw water temperature
data as `reasonable`, `questionable`, or `unreasonable` based on 
simple criteria
- Added `simulated_data` data set.
