getwd()
list.files()
setwd("D:/MSc Bioinformatics/Sem 1/BIOSTATISTICS USING R")
health_data<-read.csv("dataset1_health_physiological.csv")
View(health_data)
mean_height<-mean(health_data$Height_cm)
print(paste("The mean height of the data=",mean_height))
median_height<-median(health_data$Height_cm)
print(paste("The median height of the data=",median_height))
mode_height<-function(x){
uniquex<-unique(x)
uniquex[which.max(tabulate(match(x,uniquex)))]
}
mode_height_cm<-mode_height(health_data$Height_cm)
print(paste("The mode of height=",mode_height_cm))
SD_height<-sd(health_data$Height_cm)
print(paste("The SD of height=",SD_height))
cor_height_wt<-cor(health_data$Height_cm,health_data$Weight_kg,use="complete.obs")
cor_height_wt<-round(cor_height_wt,3)
print(paste("The core height=",cor_height_wt))
install.packages("ggplot2")
library(ggplot2)
ggplot(health_data,aes(x=Height_cm,y=Weight_kg))+
geom_smooth(method="lm",se=FALSE,color="red",size=1,linetype="dotted")+  
geom_point(color="green",size=1.5)+  
labs(
  title="Regression:Height VS Weight",
    x="height in cm",
    y="weight in kg")
regression<-lm(Height_cm~Weight_kg, data=health_data)
summary(regression)
