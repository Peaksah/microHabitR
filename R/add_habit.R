#' Add a new habit
#'
#' @param name The name of the habit.
#' @param frequency The expected frequency (e.g., "daily", "weekly").
#' @return A habit object.
#' @export
add_habit <- function(name, frequency = "daily") {
  new_habit(name, frequency)
}
