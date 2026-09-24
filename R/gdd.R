#' Calculate Growing Degree Days (GDD)
#'
#' A wrapper on [gsdd::gdd()] to get the Growing Degree Days up to a date for
#' all growing seasons.
#'
#' @inheritParams params
#' @inheritParams gsdd::gdd
#' @seealso [gsdd::gdd()], [gsdd()] and [gss()].
#' @export
#'
#' @examples
#' gdd(gsdd::temperature_data)
gdd <- function(
  x,
  end_date = as.Date("1972-09-30"),
  min_length = 60,
  msgs = TRUE
) {
  chk_whole_number(min_length)
  chk_range(min_length, c(14, 213))

  gsdd::gdd(
    x,
    start_date = as.Date("1972-03-01"),
    end_date = end_date,
    min_length = min_length,
    ignore_truncation = FALSE,
    start_temp = 5,
    end_temp = 4,
    window_width = 7,
    pick = "all",
    msgs = msgs
  )
}
