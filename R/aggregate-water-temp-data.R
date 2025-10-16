#' Aggregate Water Temperature Data
#'
#' Aggregates subdaily water temperature data to mean daily water temperature.
#' If the water temperature data spans less than the min_coverage than 
#' a missing value is return instead.
#'
#' @inheritParams params
#' @return A data frame with a date column and update water temperature column.
#' @export
#' @details The min_coverage is converted into the minimum number of non-missing
#' values in each day based on how many values of the shortest time interval 
#' within the time series are required to achieve the minimum coverage.
#' For example if the date times are every 15 minutes then 24 / 0.25 = 96 values
#' are required for 100% coverage and 84 values are required for the default
#' 87.5% minimum coverage.
#'
#' @examples
#' data <- data.frame(
#'   date_time =
#'     as.POSIXct(c(
#'       "2021-05-07 00:00:00", "2021-05-07 08:00:00",
#'       "2021-05-07 16:00:00"
#'     )),
#'   water_temperature = c(5, 5, 7)
#' )
#'
#' aggregate_water_temp_data(data)
aggregate_water_temp_data <- function(data, ...,
  min_coverage = 0.875,
  date_time = "date_time",
  value = "water_temperature") {
    
    chk::chk_data(data)
    chk::chk_unused(...)
    chk::chk_string(date_time)
    chk::chk_string(value)
    
    values <- list(
      as.POSIXct("2021-05-07 08:00:00"),
      c(1, NA_real_)
    ) |>
    rlang::set_names(c(date_time, value))
    
    chk::check_data(data, values = values)
    
    chk::chk_unique(as.integer(data[[date_time]]), x_name = paste0("`data$", date_time, "`"))
  
    chk::chk_number(min_coverage)
    chk::chk_range(min_coverage)
  
  lookup <- ".value" |>
    rlang::set_names(value)
  
  data <- data |>
    dplyr::rename(.date_time = dplyr::all_of(date_time), 
                     .value = dplyr::all_of(value)) |>
    dplyr::arrange(.data$.date_time) |>
    dplyr::mutate(date = dttr2::dtt_date(.data$.date_time)) |>
    dplyr::group_by(date) |>
    dplyr::summarise(.value = mean(.data$.value)) |>
    dplyr::bind_rows() |>
    dplyr::rename(dplyr::all_of(lookup)) |>
    dplyr::as_tibble()
  data
}