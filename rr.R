if(sessionInfo()['basePkgs']=='dplyr' | sessionInfo()['otherPkgs']=='dplyr'){
  detach(package:dplyr,unload=TRUE)
}
library(plyr)
data <- read.csv('/home/varun/Documents/ff/r/disdata/onlineUSA.csv')
library(arules)
#trans = read.transactions("Documents/ff/r/onlineUSAd.csv", format = "single", sep = ",", cols = c("InvoiceNo", "Description"))
#rules <- apriori(data,parameter = list(supp=0.01,conf=0.8,maxlen=4))
datasorted <- data[order(data$InvoiceNo),]
datasorted$InvoiceNo <- as.numeric(datasorted$InvoiceNo)
data_itemlist<- ddply(data , c("InvoiceNo","InvoiceDate"),
                      function(df1)paste(df1$Description,
                                         collapse = ","))
data_itemlist$InvoiceNo <-NULL
data_itemlist$Description <- NULL
colnames(data_itemlist) <- c("itemlist")
data_itemlist$itemlist<-NULL
write.csv(data_itemlist,"/home/varun/Documents/ff/r/final data/usa.csv",quote=FALSE, row.names = TRUE)
#rules <- apriori(data_itemlist,parameter = list(supp = 0.01,conf = 0.75,minlen=10),
 #                appearance = list(default="lhs",rhs=""),
  #               control = list(verbose=F))
#print(inspect(rules[1:5]))
