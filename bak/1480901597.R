iris_sample <- strata(iris,stratanames="Species",size=rep(25,5),method="srswor")
iris_train <- getdata(iris, iris_sample$ID_unit)
iris_test <- getdata(iris, -iris_sample$ID_unit)

fit_iris_knn=knn(iris_train[,-5],iris_test[,-5],cl=iris_train[,5])
table(iris_test$Species,fit_iris_knn)
error_knn=sum(as.numeric(as.numeric(fit_iris_knn)!=as.numeric(iris_test$Species)))/nrow(iris_test)
error_knn
