pred=predict(iris.nn,Test_iris,type="class")	
table(Test_iris$Species,pred)
