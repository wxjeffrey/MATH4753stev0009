getwd()
ddt <- read.csv("C:/Users/jeffr/OneDrive/Desktop/School/Spring 2021/Statistics/MATH4753stev0009/Labs/LAB1/DDT.csv")
head(ddt)

weight <- ddt$WEIGHT
z <- (weight-mean(weight))/sd(weight)
weight[abs(z)>=2 & abs(z)<=3]
weight[abs(z)>3]
sd(z)
