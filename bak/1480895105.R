rules<- apriori(table5_1) 

# display results
inspect(table5_1) # display transactions
inspect(rules) # display association

rules.sorted_sup <- sort(rules,by="support")
inspect(rules.sorted_sup[1:5])
rules.sorted_sup <- sort(rules,by="confidence")
inspect(rules.sorted_sup[1:5])
rules.sorted_sup <- sort(rules,by="lift")
inspect(rules.sorted_sup[1:5])

subset.matrix <- is.subset(rules.sorted_sup, rules.sorted_sup)
subset.matrix[lower.tri(subset.matrix, diag=T)] <- NA
redundant <- colSums(subset.matrix, na.rm=T) >= 1
which(redundant)
# remove redundant rules
rules.sorted_sup <- rules.sorted_sup[!redundant]
inspect(rules.sorted_sup)
