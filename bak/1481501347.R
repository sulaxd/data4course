iris.boo <- boosting(Species~. , Train_iris, mfinal=5)
pre_boo <- predict(iris.boo, Test_iris)
sum(pre_boo$class!=Test_iris$Species)/nrow(Test_iris)
