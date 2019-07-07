testPred <- predict(titanic_ctree, Test_titanic)
table(Test_titanic$Survived, testPred)
sum(testPred!=Test_titanic$Survived)/nrow(Test_titanic)
