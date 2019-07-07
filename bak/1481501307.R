prediction <- data.frame()
testsetCopy <- data.frame()
for(i in 1:k){
# remove rows with id i from dataframe to create training set
# select rows with id i to create test set
trainingset <- subset(data, id %in% list[-i])
testset <- subset(data, id %in% c(i))
 
mymodel <- rpart(Species ~ ., data = trainingset)
 
#remove response column 1, Sepal.Length
temp <- as.data.frame(predict(mymodel, testset))
 
prediction <- rbind(prediction, temp)
  
# keep only the Sepal Length Column
testsetCopy <- rbind(testsetCopy, as.data.frame(testset$Species))
 
}
# add predictions and actual Sepal Length values
result <- cbind(prediction, testsetCopy)
names(result) <- c("Predicted", "Actual")
table(result$Actual, result$Predicted)
sum(result$Actual!=result$Predicted)/nrow(result)
