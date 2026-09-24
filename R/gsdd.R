#' Calculate Growing Season Degree Days (GSDD)
#'
#' A wrapper on [gsdd::gsdd()] to get the Growing Season Degree Days for
#' all the growing seasons in a year.
#'
#' @inheritParams params
#' @inheritParams gsdd::gsdd
#' @seealso [gsdd::gsdd()], [gsdd()] and [gss()].
#' @export
#'
#' @examples
#' gsdd(gsdd::temperature_data)
gsdd <- function(
  x,
  min_length = 120,
  msgs = TRUE
) {
  chk_whole_number(min_length)
  chk_range(min_length, c(14, 274))

  gsdd::gsdd(
    x,
    start_date = as.Date("1972-03-01"),
    end_date = as.Date("1972-11-30"),
    ignore_truncation = FALSE,
    min_length = min_length,
    start_temp = 5,
    end_temp = 4,
    window_width = 7,
    pick = "all",
    msgs = msgs
  )
}
