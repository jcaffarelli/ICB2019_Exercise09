### Exercise 09 ###

library(ggplot2)

## Question 1: Plotting my own data
#setting working directory to lab data
setwd("C:/Users/jcaff/Documents/Jones Lab/hsSurvey")
#bring in lake info
linfo=read.csv("biocom_Lakes.csv", header = T, stringsAsFactors = F) #lake characteristic
head(linfo)
#plot to relate lake area to lake perimeter
ggplot(data=linfo,mapping = aes(x=perimeter,y=area))+
  geom_point()+xlab("Lake Perimeter")+ylab("Lake Area")+stat_smooth(method="lm",color="red")+
  theme_classic()

## Question 2: Plotting data.txt data
#loading data
data<-read.csv("data.txt", header = TRUE)

#barplot of the mean of the populations
ggplot(data=data, mapping = aes(x=region, y=observations))+
  stat_summary(geom = "bar",fun.y = "mean")+theme_classic()

#scatterplot of all observations
ggplot(data=data, mapping=aes(x=region, y=observations))+
  geom_point(aes(color=region))+xlab("region")+ylab("observations")+stat_smooth(method="lm", color="black")+
  theme_classic()
#The bar plot shows the means for each region, however it is difficult to determine how they are different given that+
#the means are so similar. The scatterplot shows the distribution of the observations and how the ranges for each region vary
#significantly. The scatterplot tells a better story of the data. 