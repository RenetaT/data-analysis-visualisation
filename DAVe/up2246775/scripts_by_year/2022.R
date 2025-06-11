
library(tidyverse)
library(mice)
library(zoo)
library(lubridate)
library(hms)
library(ggplot2)
library(dplyr)
library(scales)


########################### data 2022 year ####################################
df22 <- read.csv("POAR_22.csv")
df22


##### change name in the begining ######################
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df22 <- rename(df22,NO2 = "Nitrogen.dioxide")
df22 <-  rename(df22 ,NOx= "Nitric.oxide")
df22 <- rename(df22,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")
df22

class(df22$Date)
class(df22$time)
class(df22$PM10)
class(df22$NOx)
class(df22$NO2)

df22<- select(df22,"Date","time","PM10","NOx", "NO2")

md.pattern(df22)

################################################# select the date filter df25.07.22 ###### 

df25.07.22 <- filter(df22,Date=="25-07-2022")

df25.07.22
md.pattern(df25.07.22)   ###data is clean

### convert data from chr to date first
df25.07.22$Date <- dmy(df25.07.22$Date)

class(df25.07.22$Date)     ###check the data if is right data type 

df25.07.22$time <- as_hms(df25.07.22$time)

class(df25.07.22$time)

df25.07.22











