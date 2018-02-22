apple <- c("red","green","yellow")
print(apple)
print(class(apple))

list1 <- list(c(1,2,3),21.2,sin)
print(list1)

m = matrix( c(2,6,5,1,10,4),nrow=2,ncol=3,byrow = TRUE)


t1 = m %*% t(m)
print(t1)

M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE)
t = M %*% t(M)
print(t)



a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)

apple_color <- c('green','green','yellow','red','red','red','green')
apple <- factor(apple_color)
print(apple)
print(nlevels(apple))

BMI <- data.frame(
  gender = c('m','f','f'),
  height = c(44,545,55),
  weight = c(77,88,99),
  age = c(45,84,21)
)
print(BMI)





