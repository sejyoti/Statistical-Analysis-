# Load required libraries
library(readxl)
library(randomForest)
library(caret)

# Read your dataset
genus_fw <- read.csv("your directory")

# Convert the "Group" variable to a factor
genus_fw$Group <- as.factor(genus_fw$Group)

# Set a random seed for reproducibility
set.seed(42)

# Create a training set
trainIndex <- createDataPartition(genus_fw$Group, p = 0.8, list = FALSE)
train <- genus_fw[trainIndex, ]

# Build the random forest model
model <- randomForest(Group ~ . - Group, data = train, ntree = 500, mtry = 3, importance = TRUE)

# Generate predictions on the test set (replace 'test' with your actual test data)
test <- genus_fw[-trainIndex, ]  # Assuming you have a test dataset
model2 <- predict(model, newdata = test)

# Evaluate the model using a confusion matrix
confusionMatrix(model2, test$Group)

# Calculate accuracy
accuracy <- sum(model2 == test$Group) / nrow(test)

# Display the accuracy
View(accuracy)

# Evaluate variable importance
importance(model)
varImpPlot(model)
