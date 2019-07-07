library(mlr)

## Define the task
task = makeClassifTask(id = "titanic.raw", data = titanic.raw, target = "Survived")
## Define the learner
lrn = makeLearner("classif.nnet")

## Define the resampling strategy
rdesc = makeResampleDesc(method = "CV", stratify = TRUE)

## Do the resampling
r = resample(learner = lrn, task = task, resampling = rdesc, show.info = FALSE)

## Get the mean misclassification error
r$aggr
