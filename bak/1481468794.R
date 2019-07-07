opt <- which.min(titanic_rpart$cptable[,"xerror"])
cp.prune <- titanic_rpart$cptable[opt, "CP"]
titanic.prune <- prune(titanic_rpart, cp=cp.prune)
rpart.plot(titanic.prune)
printcp(titanic.prune)
