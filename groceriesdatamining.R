library(arules)
library(datasets)

data(Groceries)

itemFrequencyPlot(Groceries,topN=20,type="absolute")
rules <- apriori(Groceries,parameter = list(supp=0.001,conf=0.8,maxlen=3))

options(digits = 3)


rules <- sort(rules,by="confidence",decreasing = TRUE)

subset.matrix <- is.subset(rules,rules)
subset.matrix[lower.tri(subset.matrix,diag = T)] <- NA
redundant <- colSums(subset.matrix,na.rm = T) >= 1
rules.pruned <- rules[!redundant]
rules <- rules.pruned

rules <- apriori(data = Groceries,parameter = list(supp = 0.015,conf = 0.15,minlen=3
                                                   ),
                 control = list(verbose = F))
rules <- sort(rules, decreasing = TRUE,by = "confidence")
inspect(rules)
library(arulesViz)
plot(rules)
plot(rules, method="graph", control=list(type="items"))