pre_kyphosis_Cla <- predict(c50_kyphosis_Cla, Test_kyphosis)
table(Test_kyphosis$Kyphosis, pre_kyphosis_Cla)
sum(pre_kyphosis_Cla!=Test_kyphosis$Kyphosis)/nrow(Test_kyphosis)
