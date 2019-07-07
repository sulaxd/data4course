testPred=predict(titanic_rpart,Test_titanic[,-4],type="class")
testPred
table(Test_titanic$Survived,testPred)
sum(testPred!=Test_titanic$Survived)/nrow(Test_titanic)
