rp_kyphosis_Reg=rpart(Age~Kyphosis+Number+Start,Train_kyphosis)
print(rp_kyphosis_Reg)
printcp(rp_kyphosis_Reg)
rpart.plot(rp_kyphosis_Reg)
rp_kyphosis_Reg$variable.importance
