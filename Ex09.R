### Exercise 09 ###

library(ggplot2)

#Question 2: Plotting data.txt data
#loading data
data<-read.csv("data.txt", header = TRUE)

#barplot of the mean of the populations
ggplot(data=data, mapping = aes(x=region, y=observations))+
  stat_summary(geom = "bar",fun.y = "mean")+theme_classic()

#scatterplot of all observations
ggplot(data=data, mapping=aes(x=region, y=observations))+
  geom_point(aes(color=region))+xlab("MPG-City")+ylab("MPG-Highway")+stat_smooth(method="lm", color="black")+
  theme_classic()
