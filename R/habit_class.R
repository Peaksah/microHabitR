#' Create a new habit
#'
#' @param name Name of the habit.
#' @param frequency Target frequency (e.g., "daily", "weekly").
#' @return A habit object.
#' @export
new_habit <- function(name, frequency) {
  habit <- list(
    name = name,
    frequency = frequency,
    log_dates = as.Date(character())
  )
  class(habit) <- "habit"
  return(habit)
}
