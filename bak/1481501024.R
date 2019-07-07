CV.reg.result <- lapply(1:20, function(u)CV.cla(Species~.,iris,k,rpart,minsplit=u)) %>% do.call("rbind",.) %T>% print()
plot(CV.reg.result, type="l")
