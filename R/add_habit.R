#' Add a new habit
#'
#' @param name The name of the habit.
#' @param frequency The expected frequency (e.g., "daily", "weekly").
#' @return A habit object.
#' @export
#' @examples
#' How to add a new habit (example):
#' my_habit <- add_habit("Drink Water", "daily")
#' print(my_habit)

add_habit <- function(name, frequency = "daily") {
  new_habit(name, frequency)
}
