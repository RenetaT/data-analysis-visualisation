
library(tidyverse)
library(mice)
library(zoo)
library(lubridate)
library(hms)
library(ggplot2)
library(dplyr)
library(scales)


########################### data 2019 year ####################################
df19 <- read.csv("POAR_19.csv")
df19


##### change name in the begining ######################
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df19 <- rename(df19,NO2 = "Nitrogen.dioxide")
df19 <-  rename(df19,NOx= "Nitric.oxide")
df19

class(df19$Date)
class(df19$time)
class(df19$PM10)
class(df19$NOx)
class(df19$NO2)

df19<- select(df19,"Date","time","PM10","NOx", "NO2")

md.pattern(df19)
summary(df19)

##################################### select the date filter  df03.01.19  ###### 

df03.01.19 <- filter(df19,Date=="03-01-2019")

df03.01.19

md.pattern(df03.01.19)   ###data is clean

### convert data from chr to date first
df03.01.19$Date <- dmy(df03.01.19$Date)

class(df03.01.19$Date)     ###check the data if is right data type 

######check the time if is right time 
class(df03.01.19$time)
df03.01.19$time <- as_hms(df03.01.19$time)




df03.01.19   ###check 
summary(df03.01.19)
