pre.titanic.rf <- predict(titanic.rf, Test_titanic)
table(Test_titanic$Survived, pre.titanic.rf)
sum(pre.titanic.rf!=Test_titanic$Survived)/nrow(Test_titanic)
