#Project R Script
#Group: G8
#Names: Yu-Chien Lin (Violet) & Logan Ouellette   

options(scipen=50,digits=6) 
library(tidyverse)
library(Sleuth3)
library(psych)
library(GGally) 
library(mosaic)
getwd()

WaterQuality <- read.csv("BKB_WaterQualityData_2020084.csv", header=T)

view(WaterQuality)

#Summary 
summary(WaterQuality)
describe(WaterQuality)



#DATA Frame Adjustment and Name Transformation

WQ_Adjusted <-  data.frame(SiteID = WaterQuality$Site_Id,Salinity = WaterQuality$Salinity..ppt.,
                           DissolvedOxygen = WaterQuality$Dissolved.Oxygen..mg.L.,
                           pH = WaterQuality$pH..standard.units.,
                           WaterTempC = WaterQuality$Water.Temp...C.,
                           AirTempC = WaterQuality$AirTemp..C.)
summary(WQ_Adjusted)

#Graphing Histogram

ggplot(data = WQ_Adjusted, mapping = aes(x = SiteID, y = Salinity)) +
  geom_boxplot()+
  ggtitle("title")+
  xlab("group_var")+
  ylab("quantitative_variable")+
  theme_bw()
