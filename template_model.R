## classification and regression tree (caret)
library(caret)

## k-fold cross validation
## mpg = f(hp, wt)

# training a model
# mpg = f(hp, wt)
# Step 1.Set the formula mpg ~ hp + wt
# Step 2.Set where the dataset should locate (method = "lm"/ "knn"/...)
model <- train(mpg ~ hp + wt, 
               data = mtcars, # fit with full dataset
               method = "lm") #linear model
model

model_knn <- train(mpg ~ hp + wt, 
               data = mtcars,
               method = "knn")
model_knn

# K-nearest Neighbors (K should be odd numbers)
x <- c(2,3)
y <- c(6,8)

d <- sqrt(sum((x-y)^2))
d          
# ----------------------------------- #
# Live 11.2
