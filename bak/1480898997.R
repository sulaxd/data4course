iris_sample <- strata(iris,stratanames="Species",size=rep(25,5),method="srswor")
iris_train <- getdata(iris, iris_sample$ID_unit)
iris_test <- getdata(iris, -iris_sample$ID_unit)

iris_lda1 <- lda(Species~.,iris_train)
iris_lda1 <- predict(iris_lda1,iris_test[,-5])
iris_lda1$class
table(iris_test$Species,iris_lda1$class)
