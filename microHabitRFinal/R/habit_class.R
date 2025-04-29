#' Create a new habit
#'
#' @param name Name of the habit.
#' @param frequency Target frequency (e.g., "daily", "weekly").
#' @return A habit object.
#' @export
#' @examples
#' How to create a new habit manually:
#' example_habit <- new_habit("Exercise", "daily")
#' print(example_habit)

new_habit <- function(name, frequency) {
  habit <- list(
    name = name,
    frequency = frequency,
    log_dates = as.Date(character()) # AI used to help me learn how to use dates properly
  )
  class(habit) <- "habit"
  return(habit)
}
