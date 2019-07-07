titanic_rpart <- rpart(Survived~., data=Train_titanic, minsplit=1,cp=0.001)
rpart.plot(titanic_rpart)
printcp(titanic_rpart)
