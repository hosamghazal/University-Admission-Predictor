
admission <- read.csv("Admission_Predict.csv")
set.seed(144)
split_ratio <- 0.6
total_observations <- nrow(admission)
num_train_obs <- round(split_ratio * total_observations)

train_indices <- sample(1:total_observations, num_train_obs)
training_set <- admission[train_indices, ]
test_set <- admission[-train_indices, ]

cat("Number of observations in the training set:", nrow(training_set), "\n")

model1 <- glm(Chance.of.Admit ~ ., data = training_set)


summary(model1)