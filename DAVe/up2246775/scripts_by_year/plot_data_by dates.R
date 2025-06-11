library(tidyverse)
library(ggplot2)
library(scales)
library(plotly)


### check every date if  is correctly plot 

########################################### 2018 plot the data ------------
ggplot(df20.12.18, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 20 december 2018", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


#### pm10 only 
ggplot(df20.12.18, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 -20 December 2018", x = "time", y = "Concentration NOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df20.12.18, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level Nox 20 December 2018", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df20.12.18, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2 20 December 2018", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


#### https://plotly.com/ggplot2/getting-started/ 
## to convert ggplot to ploty

r <- ggplot(df20.12.18, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 20 december 2018", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()



### interactive plots
#### https://plotly.com/ggplot2/getting-started/

ggplotly(r)
## r is static plot 
r   
## convert it to interactive
r2 <- ggplotly(r)
##r2 is interactive 
r2

no18<- plot_ly(data = df20.12.18, x = ~time, y = ~NO2)
no18

NO18 <- plot_ly(data = df20.12.18, x = ~time) 

NO18<- NO18 %>%
  add_trace(y = ~NO2, name = 'NO2', mode = 'lines+markers')

NO18 

NO183 <- plot_ly(data = df20.12.18, x = ~time) 

NO183<- NO183 %>%
  add_trace(y = ~NO2, name = 'NO2', mode = 'lines')

NO183




########################################### 2019 plot the data ------------
ggplot(df03.01.19, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 03 March 2019", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


#### pm10 only 
ggplot(df03.01.19, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 3 January 2019", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df03.01.19, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level NOx 3 January 2019", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df03.01.19, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2   3 January 2019", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


############################################ 2020 /5 dates plot the data ------
##19.03
ggplot(df19.03.20, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 19 March 2020", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


#### pm10 only 
ggplot(df19.03.20, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 19 March 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df19.03.20, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level NOx 19 March 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df19.03.20, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2  19 March 2020", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


##26.03
ggplot(df26.03.20, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 26 March 2020 ", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()




#### pm10 only 
ggplot(df26.03.20, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10  26 March 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df26.03.20, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level NOx  26 March 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df26.03.20, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2 26 March 2020", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


##29.06
ggplot(df29.06.20, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 26 June 2020", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()



#### pm10 only 
ggplot(df29.06.20, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 29 June 2020", x = "time", y = "Concentration NOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df29.06.20, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level NOx  29 June 2020", x = "Time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df29.06.20, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2 29 June 2020", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

## 10.11
ggplot(df10.11.20, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 10 November 2020", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### pm10 only 
ggplot(df10.11.20, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution levelPM10 10 November 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df10.11.20, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution levell NOx 10 November 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df10.11.20, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2 10 November 2020", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##20.12
ggplot(df20.12.20, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 20 December 2020", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### pm10 only 
ggplot(df20.12.20, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 20 December 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df19.03.20, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level  NOx 20 December 2020", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df19.03.20, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2 20 December 2020", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

########################################### 2021 plot the data ------------
##03.01
ggplot(df03.01.21, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level
       03 January 2021", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


#### pm10 only 
ggplot(df03.01.21, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 03 January 2021", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df03.01.21, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level Nox 03 January 2021", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
NOx_21 <- ggplot(df03.01.21, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2 03 January 2021", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()



##29.11
ggplot(df29.11.21, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 29 November 2021", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()


#### pm10 only 
ggplot(df29.11.21, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 29 November 2021", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df29.11.21, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level
       Nox 29 November 2021", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df29.11.21, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2 29 November 2021", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

########################################### 2022 plot the data ------------

ggplot(df25.07.22, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 2022", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()



#### pm10 only 
ggplot(df25.07.22, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 24 July 2023", x = "time", y = "Concentration PM10") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df25.07.22, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level NOx 24 July 2023", x = "time", y = "ConcentrationNOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df25.07.22, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2  24 July 2023", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()




########################################### 2023 plot the data ------------
ggplot(df24.07.23, aes(x = time)) +
  geom_line(aes(y = PM10, color = "PM10")) +
  geom_line(aes(y = NOx, color = "Nitric Oxide")) +
  geom_line(aes(y = NO2, color = "NO2")) +
  labs(title = "Pollution level 24 July 2023", x = "time", y = "Concentration") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()



#### pm10 only 
ggplot(df24.07.23, aes(x = time,y = PM10)) +
  geom_line(color = "red") +
  labs(title = "Pollution level PM10 24 July 2023", x = "time", y = "Concentration NOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

#### only nox
ggplot(df24.07.23, aes(x = time,y = NOx)) +
  geom_line(color = "blue") +
  labs(title = "Pollution level  NOx 24 July 2023", x = "time", y = "Concentration NOx") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

##### only no2
ggplot(df24.07.23, aes(x = time,y = NO2)) +
  geom_line(color = "green") + 
  labs(title = "Pollution level NO2  24 July 2023", x = "Time", y = "Concentration NO2") +
  scale_x_time(labels = time_format("%H:%M")) +
  theme_minimal()

############### IDEAS for interactive plots interactive plots ####

## Plotting Markers and Lines 
## Basic Scatter Plot

##  https://plotly.com/r/line-and-scatter/


no2<- plot_ly(data = df24.07.23, x = ~time, y = ~NO2)
no2

NO <- plot_ly(data = df24.07.23, x = ~time) 

NO<- NO %>%
  add_trace(y = ~NO2, name = 'NO2', mode = 'lines+markers')

NO 




NO3 <- plot_ly(data = df24.07.23, x = ~time) 

NO3<- NO3 %>%
  add_trace(y = ~NO2, name = 'NO2', mode = 'lines')

NO3



