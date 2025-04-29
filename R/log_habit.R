#' Log a completed habit
#'
#' @param habit A habit object.
#' @param date The date the habit was completed (defaults to current day).
#' @return Updated habit object.
#' @export
#' @examples
#' Create and log a habit (example):
#' habit1 <- add_habit("Read Book", "daily")
#' habit1 <- log_habit(habit1)
#' print(habit1)

# AI was used to help me learn how to implement other libraries into my package correctly
# AI also used to help debug

log_habit <- function(habit, date = lubridate::today()) {
  if (!inherits(habit, "habit")) stop("Input must be a 'habit' object.")
  habit$log_dates <- c(habit$log_dates, as.Date(date))
  return(habit)
}
