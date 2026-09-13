health_data <- read.csv("dataset1_health_physiological.csv")
View(health_data)

# Mean height
mean_height <- mean(health_data$Height_cm)
print(paste("Mean height =", mean_height))

# Median height
median_height <- median(health_data$Height_cm)
print(paste("Median height =", median_height))

# Mode of height
mode_height <- function(x) {
  uniquex <- unique(x)
  uniquex[which.max(tabulate(match(x, uniquex)))]
}

mode_height_cm <- mode_height(health_data$Height_cm)
print(paste("Mode of height =", mode_height_cm))

# Standard deviation of height
SD_height <- sd(health_data$Height_cm)
print(paste("Standard deviation of height =", SD_height))

# Correlation between height and weight
cor_height_wt <- cor(
  health_data$Height_cm,
  health_data$Weight_kg,
  use = "complete.obs"
)

cor_height_wt <- round(cor_height_wt, 3)
print(paste("Correlation between height and weight =", cor_height_wt))

# Data visualization and regression line
library(ggplot2)

ggplot(health_data, aes(x = Height_cm, y = Weight_kg)) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    color = "red",
    size = 1,
    linetype = "dotted"
  ) +
  geom_point(
    color = "green",
    size = 1.5
  ) +
  labs(
    title = "Regression: Height vs Weight",
    x = "Height (cm)",
    y = "Weight (kg)"
  )

# Linear regression: predicting weight from height
regression <- lm(Weight_kg ~ Height_cm, data = health_data)
summary(regression)
