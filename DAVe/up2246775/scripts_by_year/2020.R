library(tidyverse)
library(mice)
library(zoo)
library(lubridate)
library(hms)
library(ggplot2)
library(dplyr)
library(scales)


#####################################################  2020 ####

df20 <- read.csv("POAR_20.csv")
df20

summary(df20)

##### change name in the beginning 
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df20 <- rename(df20,NO2 = "Nitrogen.dioxide")
df20 <-  rename(df20 ,NOx= "Nitric.oxide")
df20


class(df20$Date)
class(df20$time)
class(df20$PM10)
class(df20$NOx)
class(df20$NO2)

df20<- select(df20,"Date","time","PM10","NOx", "NO2")

md.pattern(df20)

###################################################### • 19th March 2020 ==============

# first filter the data that we need from the 2020 
df19.03.20 <- filter(df20,Date=="19-03-2020")

# ##############################################check the date if has missing data 
df19.03.20
md.pattern(df19.03.20)

############################################### convert data from chr to date
df19.03.20$Date <- dmy(df19.03.20$Date)
class(df19.03.20$Date)

df19.03.20$time <- as_hms(df19.03.20$time)

class(df19.03.20$time)

df19.03.20


######################################################## • 26th March 2020 ======================

# first filter the data that we need from the 2020 
df26.03.20 <- filter(df20,Date=="26-03-2020")

# ############################################## check the date if has missing data 
df26.03.20
md.pattern(df26.03.20)## missing data
############################################ deal with missing data 

######### try the method works for me 
df26.03.20$PM10 <- na.approx(df26.03.20$PM10)
df26.03.20$NOx <- na.approx(df26.03.20$NOx)
df26.03.20$NO2 <- na.approx(df26.03.20$NO2)
###############################################  convert data from chr to date
df26.03.20$Date <- dmy(df26.03.20$Date)
class(df26.03.20$Date)

df26.03.20$time <- as_hms(df26.03.20$time)

class(df26.03.20$time)

df26.03.20



################################################• 29th June 2020  ==============================

# first filter the data that we need from the 2020 
df29.06.20 <- filter(df20,Date == "29-06-2020")

df29.06.20

# ##############################################check the date if has missing data 
md.pattern(df29.06.20)
###############################################convert data from chr to date df29.06.20
df29.06.20$Date <- dmy(df29.06.20$Date)

df29.06.20$time <- as_hms(df29.06.20$time)

class(df29.06.20$time)

df29.06.20

################################################## • 10th November 2020 ======================
# first filter the data that we need from the 2020 
df10.11.20 <- filter(df20,Date == "10-11-2020")

df10.11.20

# ##############################################check the date if has missing data 
md.pattern(df10.11.20)
###############################################convert data from chr to date 
df10.11.20$Date <- dmy(df10.11.20$Date)

df10.11.20$time <- as_hms(df10.11.20$time)

class(df10.11.20$time)

df10.11.20

# ################################################• 20th December 2020 ======
# first filter the data that we need from the 2020 
df20.12.20 <- filter(df20,Date == "20-12-2020")

df20.12.20

# ##############################################check the date if has missing data 
md.pattern(df20.12.20)
###############################################convert data from chr to date df29.06.20
df20.12.20$Date <- dmy(df20.12.20$Date)

class(df20.12.20$Date)

df20.12.20$time <- as_hms(df20.12.20$time)

class(df20.12.20$time)

df20.12.20







