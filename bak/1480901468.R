itemFrequency(Adult, type = "relative") # default: "relative"
itemFrequency(Adult, type = "absolute")
ad <- apriori(Adult)
inspect(ad[1:10])

rules.sorted_sup <- sort(rules,by="support")
inspect(rules.sorted_sup[1:5])
rules.sorted_con <- sort (rules, by="confidence" )
inspect(rules.sorted_con[1:5])
rules.sorted_lift <- sort(rules, by="lift" )
inspect(rules.sorted_lift[1:5] )
