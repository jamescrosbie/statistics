# 1. Generate Sample Data
set.seed(42)
n_subjects <- 10
observations_per_subject <- 5

data <- data.frame(
  Subject = rep(1:n_subjects, each = observations_per_subject),
  Age = rep(40:60, times = n_subjects),
  # Base strength + effect of age + random subject noise + random error
  Strength = 50 + (rep(rnorm(n_subjects, 0, 5), each = observations_per_subject)) + 
             (2 * rep(0:4, times = n_subjects)) + rnorm(50, 0, 2)
)

# 2. Save the data to a CSV file
write.csv(data, "strength_data.csv", row.names = FALSE)
