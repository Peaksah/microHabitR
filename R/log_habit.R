#' Log a completed habit
#'
#' @param habit A habit object.
#' @param date The date the habit was completed (defaults to today).
#' @return Updated habit object.
#' @export
log_habit <- function(habit, date = lubridate::today()) {
  if (!inherits(habit, "habit")) stop("Input must be a 'habit' object.")
  habit$log_dates <- c(habit$log_dates, as.Date(date))
  return(habit)
}
