#' Calculate the success rate for a habit
#'
#' @param habit A habit object.
#' @return Success rate as a percentage.
#' @export
#' @examples
#' # Create a habit, log a few days, and check success rate
#' habit2 <- add_habit("Exercise", "daily")
#' habit2 <- log_habit(habit2, lubridate::today() - 2)
#' habit2 <- log_habit(habit2, lubridate::today())
#' habit_success_rate(habit2)


habit_success_rate <- function(habit) {
  if (!inherits(habit, "habit")) stop("Input must be a 'habit' object.") #AI used for this line

  # Create table of logged dates
  df <- data.frame(date = habit$log_dates)
  df <- dplyr::distinct(df)

  # Calculate based on days since first log
  start_date <- min(df$date)
  total_days <- as.integer(lubridate::today() - start_date) + 1
  completed_days <- nrow(df)

  success_rate <- (completed_days / total_days) * 100
  round(success_rate, 2)
}
