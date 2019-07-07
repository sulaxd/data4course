titanic.rf <- randomForest(Survived~. , data=Train_titanic)
titanic.rf
importance(titanic.rf)
varImpPlot(titanic.rf)
