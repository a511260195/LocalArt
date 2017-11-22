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



