iris_sample <- strata(iris,stratanames="Species",size=rep(25,5),method="srswor")
iris_train <- getdata(iris, iris_sample$ID_unit)
iris_test <- getdata(iris, -iris_sample$ID_unit)

iris_Bayes1=NaiveBayes(Species~.,iris_test)
pre_Bayes1=predict(iris_Bayes1,iris_test[,-5])
table(iris_test$Species,pre_Bayes1$class)
error_Bayes1=sum(as.numeric(as.numeric(pre_Bayes1$class)!=as.numeric(iris_test$Species)))/nrow(iris_test)
error_Bayes1
