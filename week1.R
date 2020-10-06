#HarvardX PH525.2x
#Introduction to Linear Models and Matrix Algebra
#week1
##Introduction Exercises
#Introduction Exercises #1
library(UsingR)
data("father.son", package = "UsingR")
mean(father.son$sheight)
#Introduction Exercises #2
fatherht <- round(father.son$fheight,0)
fathersonht <- cbind(father.son, fatherht)
library(dplyr)
sonht <- filter(fathersonht, fatherht == 71) %>% select(sheight) %>% unlist
mean(sonht)
#another solution
library(dplyr)
sonht <- filter(father.son, round(fheight) == 71) %>% select(sheight) %>% unlist
mean(sonht)
##Matrix Notation Exercises
#Matrix Notation Exercises #1
X <- matrix(1:1000,100,10)
X[25,3]
#Matrix Notation Exercises #2
x <- 1:10
x2 <- cbind(x, 2*x, 3*x, 4*x, 5*x)
sum(x2[7,])
#Matrix Notation Exercises #3
matrix(1:60,20,3)
matrix(1:60,20,3,byrow=TRUE)
x=11:20;rbind(x,2*x,3*x)
x=1:40;matrix(3*x,20,2)


zzcd






























