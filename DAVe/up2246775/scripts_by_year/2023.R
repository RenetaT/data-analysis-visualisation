library(tidyverse)
library(mice)
library(zoo)
library(lubridate)
library(hms)
library(ggplot2)
library(dplyr)
library(scales)
########################### data 2023 year ####################################
df23 <- read.csv("POAR_23.csv")

df23 
##### change name ######################
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df23 <- rename(df23 ,NO2 = "Nitrogen.dioxide")
df23 <-  rename(df23  ,NOx= "Nitric.oxide")
df23  <- rename(df23 ,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")

df23 

class(df23 $Date)
class(df23 $time)
class(df23 $PM10)
class(df23 $NOx)
class(df23 $NO2)

df23 <- select(df23 ,"Date","time","PM10","NOx", "NO2")


md.pattern(df23)
############################################ select the date filter  df24.07.23 ######

df24.07.23<- filter(df23 ,Date=="24-07-2023")

df24.07.23
md.pattern(df24.07.23)   ###data is clean

### convert data from chr to date first
df24.07.23$Date <- dmy(df24.07.23$Date)

class(df24.07.23$Date)     ###check the data if is right data type 
###time

df24.07.23$time <- as_hms(df24.07.23$time)

class(df24.07.23$time)

df24.07.23

summary(df24.07.23)


