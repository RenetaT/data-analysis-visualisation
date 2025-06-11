library(tidyverse)
library(mice)
library(zoo)
library(lubridate)
library(hms)
library(ggplot2)
library(dplyr)
library(scales)
library(plotly)
library(scales)



########################### data 2018 year ####################################
df18 <- read.csv("Data/POAR_18.csv")
df18


##### change name 
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df18<- rename(df18,NO2 = "Nitrogen.dioxide")
df18 <-  rename(df18,NOx= "Nitric.oxide")
df18 <- rename(df18 ,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")
df18

df18<- select(df18,"Date","time","PM10","NOx", "NO2")

md.pattern(df18)

############################# select the date filter df20.12.18 

df20.12.18 <- filter(df18,Date=="20-12-2018")

#summary (df20.12.18)
df20.12.18
md.pattern(df20.12.18)   ### missing data only one value may be the best approach will be approx

######### approx method

df20.12.18$PM10 <- na.approx(df20.12.18$PM10)

### convert data from chr to date first

df20.12.18$Date <- dmy(df20.12.18$Date)

class(df20.12.18$Date)     ###check the data if is right data type 


######check the time if is right time 

df20.12.18$time <- as_hms(df20.12.18$time)

class(df20.12.18$time)

df20.12.18  ###check 


########################### data 2019 year ####################################
df19 <- read.csv("Data/POAR_19.csv")
df19

##### change name 
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 

df19 <- rename(df19,NO2 = "Nitrogen.dioxide")
df19 <-  rename(df19,NOx= "Nitric.oxide")
df19


df19<- select(df19,"Date","time","PM10","NOx", "NO2")

md.pattern(df19)
summary(df19)

############################# select the date filter- df03.01.19 

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



#####################################################  2020 ####

df20 <- read.csv("Data/POAR_20.csv")
df20

summary(df20)

##### change name in the beginning 
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df20 <- rename(df20,NO2 = "Nitrogen.dioxide")
df20 <-  rename(df20 ,NOx= "Nitric.oxide")
df20


df20<- select(df20,"Date","time","PM10","NOx", "NO2")

md.pattern(df20)

################################## • 19th March 2020 ==============

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

################################ • 26th March 2020 ======================

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
############################## • 29th June 2020  ==============================

# first filter the data that we need from the 2020 
df29.06.20 <- filter(df20,Date == "29-06-2020")

df29.06.20

# ############################################## check the date if has missing data 
md.pattern(df29.06.20)

############################################### convert data from chr to date df29.06.20
df29.06.20$Date <- dmy(df29.06.20$Date)

df29.06.20$time <- as_hms(df29.06.20$time)

class(df29.06.20$time)

df29.06.20

############################## • 10th November 2020 ======================
# first filter the data that we need from the 2020 
df10.11.20 <- filter(df20,Date == "10-11-2020")

df10.11.20

############################################### check the date if has missing data 
md.pattern(df10.11.20)
############################################### onvert data from chr to date 
df10.11.20$Date <- dmy(df10.11.20$Date)

df10.11.20$time <- as_hms(df10.11.20$time)

class(df10.11.20$time)

df10.11.20

# ############################## • 20th December 2020 ======
# first filter the data that we need from the 2020 
df20.12.20 <- filter(df20,Date == "20-12-2020")

df20.12.20

# ##############################################c heck the date if has missing data 
md.pattern(df20.12.20)
############################################### convert data from chr to date df29.06.20
df20.12.20$Date <- dmy(df20.12.20$Date)

class(df20.12.20$Date)

df20.12.20$time <- as_hms(df20.12.20$time)

class(df20.12.20$time)

df20.12.20



###########################  2021 year ####################################
df21 <- read.csv("Data/POAR_21.csv")
df21


##### change name in the beginning
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df21 <- rename(df21,NO2 = "Nitrogen.dioxide")
df21 <-  rename(df21 ,NOx= "Nitric.oxide")
df21 <- rename(df21,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")
df21


df21<- select(df21,"Date","time","PM10","NOx", "NO2")

md.pattern(df21)


#### use na.approx to fill the missing data -- no
# df21$PM10 <- na.approx(df21$PM10)
# df21$NO2 <- na.approx(df21$NO2)
# df21$NOx <- na.approx(df21$NOx)


####################### • 3rd January 2021 ##################

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



########################### data 2022 year ####################################
df22 <- read.csv("Data/POAR_22.csv")
df22

##### change name 
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df22 <- rename(df22,NO2 = "Nitrogen.dioxide")
df22 <-  rename(df22 ,NOx= "Nitric.oxide")
df22 <- rename(df22,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")
df22



df22<- select(df22,"Date","time","PM10","NOx", "NO2")

md.pattern(df22)

################################################# select the date filter df25.07.22

df25.07.22 <- filter(df22,Date=="25-07-2022")

df25.07.22
md.pattern(df25.07.22)   ###data is clean

### convert data from chr to date first
df25.07.22$Date <- dmy(df25.07.22$Date)

class(df25.07.22$Date)     ###check the data if is right data type 

df25.07.22$time <- as_hms(df25.07.22$time)

class(df25.07.22$time)

df25.07.22



###########################  data 2023 year ####################################
df23 <- read.csv("Data/POAR_23.csv")

df23 
##### change name 
#### NO2 = "Nitrogen.oxides.as.nitrogen.dioxide"
##### NOx= "Nitric.oxide" 
df23 <- rename(df23 ,NO2 = "Nitrogen.dioxide")
df23 <-  rename(df23  ,NOx= "Nitric.oxide")
df23  <- rename(df23 ,PM10="PM.sub.10..sub..particulate.matter..Hourly.measured.")

df23 

df23 <- select(df23 ,"Date","time","PM10","NOx", "NO2")

md.pattern(df23)
############################################ select the date filter  df24.07.23

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




################################################ combine data ###############


total <- rbind(df20.12.18,df03.01.19,df19.03.20,df26.03.20,df29.06.20,df10.11.20,df20.12.20,df03.01.21,df29.11.21,df25.07.22,df24.07.23)

str(total)
class(total)
summary(total)
md.pattern(total)


################ plot the combine data 

################# PM10 -----

pm10 <- ggplot(total, aes(time, PM10)) +
  geom_line(colour = "red") +
  labs(title = "Pollution level PM10 2018-2023", x = "Time", y = "Concentration PM10") +
  scale_x_time(labels = time_format("%H:%M"),  breaks = breaks_width("9 hours")) +
  facet_wrap(vars(Date), scales = "free_x") +
  theme_gray()

pm10


### Convert to interactive 

PM10 <- ggplotly(pm10)
PM10

saveRDS(PM10,"PM10.rds")


################## Nitric oxide - NO --------

no <-ggplot(total, aes(time,NOx)) +
  geom_line(colour = "blue") +
  labs(title = "Pollution level NO 2018-2023", x = "Time", y = "Concentration NO") +
  scale_x_time(labels = time_format("%H:%M"), breaks = breaks_width("9 hours")) +
  facet_wrap(vars(Date),scales = "free_x")+
  theme_gray()

no
### Convert to interactive 
NO <- ggplotly(no)
NO

saveRDS(NO,"NO.rds")

############### Nitrogen.oxides.as.nitrogen.dioxide- NO2 -----------

no2 <- ggplot(total, aes(time,NO2)) +
  geom_line(colour = "darkgreen") +
  labs(title = "Pollution level NO2 2018-2023", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M"),breaks = breaks_width("9 hours")) +
  facet_wrap(vars(Date),scales = "free_x")+
  theme_gray()

no2
### Convert to interactive 
NO2 <- ggplotly(no2)
NO2

saveRDS(NO2,"NO2.rds")




################################################ Average 2020 per month ########
#create a copy 
avg20 <- df20

summary(df20)

#convert the date type
class(avg20$Date)
avg20$Date <- dmy(avg20$Date)

## only month as a number 01,02... or %b Jan, Feb...

avg20<-avg20 %>%
  mutate(Month = format(Date, "%m"))  

summary(avg20)

monthly_avg <- avg20 %>%  
  group_by(Month) %>%
  summarise(
    PM10_avg = mean(PM10, na.rm = TRUE),
    NOx_avg = mean(NOx, na.rm = TRUE),
    NO2_avg = mean(NO2, na.rm = TRUE)
  )


### line and point plot this one work fine

avg <- ggplot(monthly_avg, aes(x = Month)) +
  geom_line(aes(y = PM10_avg, color = "PM10", group = 1)) +
  geom_line(aes(y = NOx_avg, color = "NO", group = 1)) +
  geom_line(aes(y = NO2_avg, color = "NO2", group = 1)) +
  geom_point(aes(y = PM10_avg, color = "PM10")) + 
  geom_point(aes(y = NOx_avg, color = "NO")) +
  geom_point(aes(y = NO2_avg, color = "NO2")) +
  labs(title = "Monthly average pollution in 2020",
       x = "Month",
       y = "Concentration",
       color = "Pollutant") +
  theme_minimal() 

avg


AVG <- ggplotly(avg)

AVG
saveRDS(AVG ,"AVG.rds")




############ my chose of date 5th visualization #############

## compare 27.08.20- covid restrictions with 27.08.21-Victorious festival

## August 27 to August 29, 2021
 df21

df27.08.21<- filter(df21 ,Date=="27-08-2021")

#27.08.21

summary(df27.08.21)
md.pattern(df27.08.21)

df27.08.21$Date <- dmy(df27.08.21$Date)

class(df27.08.21$Date) ###check the data if is right data type 
###time

df27.08.21$time <- as_hms(df27.08.21$time)

class(df27.08.21$time)


ggplot(df27.08.21, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "NO")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 27 August 2021", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


 

### august 27 2020 

df20
df27.08.20<- filter(df20 ,Date=="27-08-2020")


##df27.08.20
summary(df27.08.20)
md.pattern(df27.08.20) ###-clean
df27.08.20$Date <- dmy(df27.08.20$Date)

class(df27.08.20$Date)     ###check the data if is right data type 
###time

df27.08.20$time <- as_hms(df27.08.20$time)

class(df27.08.20$time)

df27.08.20

ggplot(df27.08.20, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "NO")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 27 August 2020", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


### combine dates 
august<- rbind(df27.08.20,df27.08.21)
summary(august)

# ggplot(august, aes(time, NOx)) +
#   geom_line(colour = "red") +
#   labs(title = "Pollution level PM10 2018-2023", x = "Time", y = "Concentration PM10") +
#   scale_x_time(labels = time_format("%H:%M"),  breaks = breaks_width("9 hours")) +
#   facet_wrap(vars(Date), scales = "free_x") +
#   theme_gray()

August <- ggplot(august, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "NO")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Comparison 27 August 2020 and 27 August 2021", 
       x = "Time", 
       y = "Concentration",
       color = "Pollutant") +
  scale_x_time(labels = scales::time_format("%H:%M")) +
  facet_wrap(~ Date) + 
  theme_minimal() 

August

AUGUST <- ggplotly(August)

AUGUST
saveRDS(AUGUST ,"AUGUST.rds")



#####################  Links #########################
### https://www.reddit.com/r/RStudio/comments/yd6bxp/how_to_calculate_monthly_averages_from_daily_data/
### https://stackoverflow.com/questions/68910425/finding-monthly-average-of-columns-using-group-by-function-in-r
### https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/mean
### https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/mean
### https://plotly.com/r/line-and-scatter/ 
### https://dplyr.tidyverse.org/reference/group_by.html 
### https://dplyr.tidyverse.org/reference/summarise.html 
### https://www.codecademy.com/learn/learn-r/modules/learn-r-aggregates/cheatsheet
### https://www.r-bloggers.com/2024/01/how-to-extract-month-from-date-in-r-with-examples/
### https://stackoverflow.com/questions/67624454/how-to-get-month-name-as-output-from-date-object
### https://plotly.com/ggplot2/getting-started/