library(plyr)
library(dplyr)
library(ggplot2)

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
library(useful)
k.best <- FitKMeans(data.feature, max.clusters = 10,nstart = 25,seed = 100)
plot(k.best) ## 4 clusters

set.seed(1)
k.out <- kmeans(data.feature,4)
k.out
