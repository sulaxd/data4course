CV.cla <- function(Formula, dta, k, FUN,...){
data$id <- sample(1:k, nrow(data), replace = TRUE)
list <- 1:k
# prediction and test set data frames that we add to with each iteration over
# the folds
prediction <- data.frame()
testsetCopy <- data.frame()
#function for k fold
for(i in 1:k){
trainingset <- subset(data, id %in% list[-i])
testset <- subset(data, id %in% c(i))
mymodel <- FUN(Formula, data = trainingset,...)
temp <- as.data.frame(predict(mymodel, testset))
prediction <- rbind(prediction, temp)
testsetCopy <- rbind(testsetCopy, as.data.frame(testset[,1]))
}
result <- cbind(prediction, testsetCopy[, 1])
names(result) <- c("Predicted", "Actual")
return(sum(result$Actual!=result$Predicted)/nrow(result))
}
