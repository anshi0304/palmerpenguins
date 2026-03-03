#Task 1
library(palmerpenguins)
head(penguins)
numeric_data <- penguins[, sapply(penguins, is.numeric)]
numeric_means <- apply(numeric_data, 2, mean, na.rm = TRUE)
print(numeric_means)

#Task 2
species_counts <- tapply(penguins$bill_length_mm, penguins$species, length)
print(species_counts)

#Task 3
bill_length_means <- lapply(
  split(penguins$bill_length_mm, penguins$species),
  mean,
  na.rm = TRUE
)
print(bill_length_means)

#Task 4
summary_table <- sapply(
  penguins[, sapply(penguins, is.numeric)],
  function(x) c(
    mean = mean(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE)
  )
)
print(summary_table)
