library(tidyverse)
library(mice)
library(zoo)
library(lubridate)
library(hms)
library(ggplot2)
library(dplyr)
library(scales)

########################### data 2018 year ####################################
df18 <- read.csv("POAR_18.csv")
df18


##### change name in the beginnings ######################
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df18<- rename(df18,NO2 = "Nitrogen.dioxide")
df18 <-  rename(df18,NOx= "Nitric.oxide")
df18 <- rename(df18 ,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")
df18

class(df18$Date)
class(df18$time)
class(df18$PM10)
class(df18$NOx)
class(df18$NO2)

df18<- select(df18,"Date","time","PM10","NOx", "NO2")

md.pattern(df18)
##mean(df18$PM10)

############################# select the date filter df20.12.18 ###### 

df20.12.18 <- filter(df18,Date=="20-12-2018")


summary (df20.12.18)
df20.12.18
md.pattern(df20.12.18)   ###missing data only one value may be the best approach will be approx


######### approx method
df20.12.18$PM10 <- na.approx(df20.12.18$PM10)


### convert data from chr to date first
df20.12.18$Date <- dmy(df20.12.18$Date)

class(df20.12.18$Date)     ###check the data if is right data type 
 

######check the time if is right time 

df20.12.18$time <- as_hms(df20.12.18$time)


class(df20.12.18$time)

df20.12.18  ###check 
summary(df20.12.18)
class(df20.12.18)
str(df20.12.18)
print(df20.12.18)

