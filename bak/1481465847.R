table(df$Sex) %>% entropy.empirical(unit="log2")
lapply(titanic.raw, function(u)entropy.empirical(table(u),unit="log2"))
