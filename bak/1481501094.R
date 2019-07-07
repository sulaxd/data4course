library(sampling)
a=round(1/4*sum(kyphosis.dt$AgeGroup=="短期"))
b=round(1/4*sum(kyphosis.dt$AgeGroup=="中期"))
c=round(1/4*sum(kyphosis.dt$AgeGroup=="長期"))

set.seed(1)
sub=strata(kyphosis.dt,stratanames="AgeGroup",size=c(b,c,a),method="srswor")
table(sub$AgeGroup)
Train_kyphosis=kyphosis.dt[-sub$ID_unit,]
Test_kyphosis=kyphosis.dt[sub$ID_unit,]
nrow(Train_kyphosis);nrow(Test_kyphosis)
