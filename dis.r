
df = read.csv("Desktop/OnlineRetail.csv")

split(df, with(df, interaction(Country)), drop = FALSE)
print(df)
