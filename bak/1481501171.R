titanic_ctree <- ctree(Survived~., data=Train_titanic) # condition
titanic_ctree
plot(titanic_ctree)
