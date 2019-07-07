iris_sample <- strata(iris,stratanames="Species",size=rep(10,5),method="srswor")
iris_sample <- getdata(iris, iris_sample$ID_unit)
iris_sample_km <- kmeans(iris_sample[,-5], 3)
table(iris_sample_km$cluster, iris_sample$Species)
