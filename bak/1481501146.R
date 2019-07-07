Train_kyphosis <- Train_kyphosis[,-5] # 因C5.0函數對中文敏感
c50_kyphosis_Cla <- C5.0(Kyphosis~., data = Train_kyphosis)
c50_kyphosis_Cla
summary(c50_kyphosis_Cla)
plot(c50_kyphosis_Cla)
