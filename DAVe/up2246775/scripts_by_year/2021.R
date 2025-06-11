
library(tidyverse)
library(mice)
library(zoo)
library(lubridate)
library(hms)
library(ggplot2)
library(dplyr)
library(scales)


###########################  2021 year ####################################
df21 <- read.csv("POAR_21.csv")
df21


##### change name in the beginning
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df21 <- rename(df21,NO2 = "Nitrogen.dioxide")
df21 <-  rename(df21 ,NOx= "Nitric.oxide")
df21 <- rename(df21,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")
df21


class(df21$Date)
class(df21$time)
class(df21$PM10)
class(df21$NOx)
class(df21$NO2)

df21<- select(df21,"Date","time","PM10","NOx", "NO2")

md.pattern(df21)


#### use na.approx to fill the missing data 
# df21$PM10 <- na.approx(df21$PM10)
# df21$NO2 <- na.approx(df21$NO2)
# df21$NOx <- na.approx(df21$NOx)


########################################## • 3rd January 2021 ##################

# first filter the data that I need from the 2021 

df03.01.21 <- filter(df21,Date=="03-01-2021")


############################################### check the date if has missing data 
df03.01.21
md.pattern(df03.01.21)##   -- data is clean

############################################## merge date and time together
### convert data from chr to date first
df03.01.21$Date <- dmy(df03.01.21$Date)

class(df03.01.21$Date)     ###check the data if is right data type 

######check the time if is right time 

df03.01.21$time <- as_hms(df03.01.21$time)

class(df03.01.21$time)

df03.01.21 #### clean and tidy data




################################################################## • 29th November 2021 #####################################################
# first filter the data that I need from the 2021 

df29.11.21 <- filter(df21,Date=="29-11-2021")


############################################### check the date if has missing data 
df29.11.21
md.pattern(df29.11.21)
### ig gap of date but is in the beginning of the date will plot it with missing data

### convert data from chr to date first
df29.11.21$Date <- dmy(df29.11.21$Date)

class(df29.11.21$Date)     ###check the data if is right data type 

######check the time if is right time 

class(df29.11.21$time)
df29.11.21$time <- as_hms(df29.11.21$time)



df29.11.21 #### check

      
