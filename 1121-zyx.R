library(plyr)
library(dplyr)
library(ggplot2)
library(lubridate)
library(useful)
library(MASS)
library(tree)
library(ISLR)
library(caret)
attach(Carseats)

# read table
coupon = read.csv("coupon.csv")
data = read.csv("LocalArt.csv")

# join table
coupon$Coupon = "yes"
data = join(data, coupon[,-1], by = "CustID" )
data$Coupon = ifelse(is.na(data$Coupon),"no","yes")
#  no(3983)  yes(1017) 

# merge
data <- merge(data,coupon[,-1],all.x = T, by = "CustID")
data$Coupon = ifelse(is.na(data$Coupon),"no","yes")
data.feature <- data[,c(6:10)]

#kmeans clustering

k.best <- FitKMeans(data.feature, max.clusters = 10,nstart = 25,seed = 100)
plot(k.best) ## 4 clusters

set.seed(1)
k.out <- kmeans(data.feature,4)
k.out$centers
plot(data.feature[c("Mosaics","Sculpture")], col = k.out$cluster)
plot(data.feature[c("Paintings","Jewelry")], col = k.out$cluster)

# revenue-coupon density

# regression tree: Join date, DOB, revenue
data <- mutate(data, Revenue = Paintings + Jewelry + Mosaics + Sculpture)
data$JoinDate <- as.POSIXct(data$JoinDate)
data$DOB <- as.POSIXct(data$DOB)
data <- mutate(data, Year = year(JoinDate))
data <- mutate(data, Age = 2015-year(DOB))

# max(data$JoinDate)
# min(data$JoinDate)
# max(data$JoinDate)-min(data$JoinDate)

ggplot(data,aes(x = JoinDate,
                y = Revenue))+
  geom_point()
ggplot(data,aes(JoinDate))+
  geom_bar()
ggplot(data,aes(Age))+
  geom_bar()

data$earlyuser <- ifelse(data$JoinDate<="2014-11-30","early","new")

# tree

tree.data <- data[,c(5,6,11,12,14,15)]
set.seed(1)
tree1 <- tree(formula = Revenue~.,tree.data)
plot(tree1)
text(tree1,pretty = 0)


# regression

fit.lm <- lm(Revenue~., data = tree.data)
summary(fit.lm)
