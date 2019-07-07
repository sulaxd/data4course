library(data.table)
kyphosis.dt <- data.table(kyphosis)
kyphosis.dt[,AgeGroup:=ifelse(Age<=50,"短期",
                                ifelse(Age>=150,"長期","中期"))]
