# Load package
library(microHabitR)


# Create some new habits

habit_water <- add_habit("Drink Water", frequency = "daily")
habit_reading <- add_habit("Read a Book", frequency = "daily")
habit_exercise <- add_habit("Exercise", frequency = "daily")
habit_meditation <- add_habit("Meditate", frequency = "daily")


# Log completions (simulate last 2 weeks)

# Drink Water habit - logged almost every day
habit_water <- log_habit(habit_water, lubridate::today() - 13)
habit_water <- log_habit(habit_water, lubridate::today() - 12)
habit_water <- log_habit(habit_water, lubridate::today() - 11)
habit_water <- log_habit(habit_water, lubridate::today() - 10)
habit_water <- log_habit(habit_water, lubridate::today() - 9)
habit_water <- log_habit(habit_water, lubridate::today() - 8)
habit_water <- log_habit(habit_water, lubridate::today() - 7)
habit_water <- log_habit(habit_water, lubridate::today() - 6)
habit_water <- log_habit(habit_water, lubridate::today() - 5)
habit_water <- log_habit(habit_water, lubridate::today() - 4)
habit_water <- log_habit(habit_water, lubridate::today() - 3)
habit_water <- log_habit(habit_water, lubridate::today() - 2)
habit_water <- log_habit(habit_water, lubridate::today() - 1)
habit_water <- log_habit(habit_water, lubridate::today()) # today

# Read a Book habit - logged about every other day
habit_reading <- log_habit(habit_reading, lubridate::today() - 12)
habit_reading <- log_habit(habit_reading, lubridate::today() - 10)
habit_reading <- log_habit(habit_reading, lubridate::today() - 8)
habit_reading <- log_habit(habit_reading, lubridate::today() - 6)
habit_reading <- log_habit(habit_reading, lubridate::today() - 4)
habit_reading <- log_habit(habit_reading, lubridate::today() - 2)
habit_reading <- log_habit(habit_reading, lubridate::today())

# Exercise habit - logged a few times
habit_exercise <- log_habit(habit_exercise, lubridate::today() - 13)
habit_exercise <- log_habit(habit_exercise, lubridate::today() - 9)
habit_exercise <- log_habit(habit_exercise, lubridate::today() - 5)
habit_exercise <- log_habit(habit_exercise, lubridate::today())

# Meditate habit - logged heavily (almost daily)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 13)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 12)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 11)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 10)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 9)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 7)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 6)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 5)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 4)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 3)
habit_meditation <- log_habit(habit_meditation, lubridate::today() - 2)
habit_meditation <- log_habit(habit_meditation, lubridate::today())


# Check success rates

# Calculate success rates
success_rates <- data.frame(
  Habit = c("Drink Water", "Read a Book", "Exercise", "Meditate"),
  SuccessRate = c(
    habit_success_rate(habit_water),
    habit_success_rate(habit_reading),
    habit_success_rate(habit_exercise),
    habit_success_rate(habit_meditation)
  )
)

# Print the success rates table
success_rates


# Visualize habit completions

# Plot Drink Water
plot_water <- visualize_habits_over_time(habit_water, highlight_today = TRUE)
print(plot_water)

# Plot Read a Book
plot_reading <- visualize_habits_over_time(habit_reading, highlight_today = TRUE)
print(plot_reading)

# Plot Exercise
plot_exercise <- visualize_habits_over_time(habit_exercise, highlight_today = TRUE)
print(plot_exercise)

# Plot Meditate
plot_meditation <- visualize_habits_over_time(habit_meditation, highlight_today = TRUE)
print(plot_meditation)

