data <- read.csv('Desktop/fragilestatesindex-2016.csv')
#print(is.data.frame(data))
#print(ncol(data))
#print(nrow(data))
#print(data)
#t <- max(data$Human.Flight)
#te <- subset(data,Human.Flight == max(Human.Flight))
#print(te)
#print(data)
#print(data$Demographic.Pressures[1:10])
TOT <- cut(data$Total,breaks = c(0,30,60,90,120),labels = c("SUSTAINABLE","STABLE","WARNING","ALERT"))
DP <- cut(data$Demographic.Pressures,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
RI<- cut(data$Refugees.and.IDPs,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
GG <- cut(data$Group.Grievance,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
HF <- cut(data$Human.Flight,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
UD <- cut(data$Uneven.Development,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
LS <- cut(data$Legitimacy.of.the.State,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
PS <- cut(data$Public.Services,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
HR <- cut(data$Human.Rights,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
SA <- cut(data$Security.Apparatus,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
PED <- cut(data$Poverty.and.Economic.Decline,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
FE <- cut(data$Factionalized.Elites,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))
EI <- cut(data$External.Intervention,breaks = c(0,6,7,8,9,10),labels = c("E","D","C","B","A"))

DF <- data.frame(
  country = data$Fragile.States.Index.2016,
  tot = TOT,
  dp = DP,
  ri = RI,
  gg = GG,
  hf = HF,
  ud = UD,
  ped = PED,
  ls = LS,
  ps = PS,
  hr = HR,
  sa = SA,
  fe = FE,
  ei = EI
)

write.csv(DF,"fragile.csv",row.names = FALSE)

data1 <- read.csv("fragile.csv")
print(data1)

rules <- apriori(data1,parameter = list(supp = 0.01,conf = 0.8,minlen=3),
                 appearance = list(default="lhs",rhs="tot=ALERT"),
                 control = list(verbose=F))
options(digits=2)
inspect(rules)