library(mlr)
pre_kyphosis_Reg=predict(rp_kyphosis_Reg,Test_kyphosis,type="vector")
pre_kyphosis_Reg
cbind(Test_kyphosis$Age,pre_kyphosis_Reg)
measureRMSE(Test_kyphosis$Age,pre_kyphosis_Reg)
