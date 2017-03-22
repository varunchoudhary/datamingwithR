library(arules)
library(datasets)

data(Groceries)

itemFrequencyPlot(Groceries,topN=20,type="absolute")

rules <- apriori(Groceries,parameter = list(supp=0.001,conf=0.8,maxlen=3))

options(digits = 3)


rules <- sort(rules,by="confidence",decreasing = TRUE)
inspect(rules[1:5])

subset.matrix <- is.subset(rules,rules)
subset.matrix[lower.tri(subset.matrix,diag = T)] <- NA
redundant <- colSums(subset.matrix,na.rm = T) >= 1
rules.pruned <- rules[!redundant]
rules <- rules.pruned

rules <- apriori(data = Groceries,parameter = list(supp = 0.01,conf = 0.15),
                 appearance = list(default = "lhs" , rhs = "whole milk"),
                 control = list(verbose = F))
rules <- sort(rules, decreasing = TRUE,by = "confidence")

inspect(rules[1:5])