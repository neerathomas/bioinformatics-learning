# Statistical Tests and ANOVA

# Reading the dataset
dataset <- read.csv("dataset1_health_physiological.csv")

# Viewing the dataset
View(dataset)

# Independent Samples t-test
t_test <- t.test(dataset$BMI ~ Sex, data = dataset)
t_test

# F-test
F_test <- var.test(dataset$BMI ~ Sex, data = dataset)
F_test

# Variance
var(dataset$Age_years)
var(dataset$BMI)

# Standard Deviation
SD_Age <- sd(dataset$Age_years)
SD_Age

sqrt(var(dataset$Age_years))

# Covariance
cov(dataset$Age_years, dataset$BMI)

# Correlation
cor(dataset$Age_years, dataset$BMI)

# One-way ANOVA
anova <- aov(Triglycerides_mg_dL ~ Smoking_Status, data = dataset)
anova
summary.aov(anova)

# Two-way ANOVA
anova_two_way <- aov(Triglycerides_mg_dL ~ Smoking_Status * Physical_Activity_Level, data = dataset)
anova_two_way
summary.aov(anova_two_way)
