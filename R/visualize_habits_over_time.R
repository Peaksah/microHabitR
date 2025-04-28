#' Visualize habit tracking over time with optional highlight for today
#'
#' @param habit A habit object.
#' @param highlight_today Logical. If TRUE, highlights today's completion if present.
#' @return A ggplot showing habit tracking as a line chart.
#' @export
visualize_habits_over_time <- function(habit, highlight_today = TRUE) {
  if (!inherits(habit, "habit")) stop("Input must be a 'habit' object.")

  df <- data.frame(date = habit$log_dates)
  df <- dplyr::count(df, date)

  full_dates <- data.frame(date = seq.Date(from = min(habit$log_dates), to = lubridate::today(), by = "day"))

  df_full <- dplyr::left_join(full_dates, df, by = "date")
  df_full$n[is.na(df_full$n)] <- 0

  if (highlight_today) {
    df_full$color_group <- ifelse(df_full$date == lubridate::today(), "Today", "Other")
  } else {
    df_full$color_group <- "Other"
  }

  p <- ggplot2::ggplot(df_full, ggplot2::aes(x = date, y = n, group = 1)) +
    ggplot2::geom_line(color = "steelblue", size = 1.2) +
    ggplot2::geom_point(ggplot2::aes(color = color_group), size = 3) +
    ggplot2::scale_color_manual(values = c("Today" = "orange", "Other" = "steelblue")) +
    ggplot2::scale_x_date(date_breaks = "2 days", date_labels = "%b %d") +
    ggplot2::labs(
      title = paste("Habit Tracking Progress:", habit$name),
      subtitle = paste0("Logged ", sum(df_full$n), " times"),
      x = "Date",
      y = "Completions",
      color = "Logged Date"
    ) +
    ggplot2::theme_minimal(base_size = 14) +
    ggplot2::theme(
      axis.text.x = ggplot2::element_text(angle = 45, hjust = 1),
      plot.title = ggplot2::element_text(face = "bold"),
      plot.subtitle = ggplot2::element_text(face = "italic")
    )

  return(p)
}
