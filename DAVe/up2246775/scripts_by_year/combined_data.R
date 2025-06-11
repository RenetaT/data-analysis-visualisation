library(tidyverse)
library(ggplot2)
library(scales)
library(plotly)

############################## combine data and plot it 

total <- rbind(df20.12.18,df03.01.19,df19.03.20,df26.03.20,df29.06.20,df10.11.20,df20.12.20,df03.01.21,df29.11.21,df25.07.22,df24.07.23)
 
str(total)
class(total)
summary(total)
md.pattern(total)

total

################ plot the combine data ###########

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







# ############## Interactive plots 
# ### interactive plots
# #### https://plotly.com/ggplot2/getting-started/
# 
# ggplotly(r)
# ## r is static plot 
# r   
# ## convert it to interactive
# r2 <- ggplotly(r)
# ##r2 is interactive 
# r2
# 
# 
# NO_2 <- plot_ly(data = total, x = ~time) 
# NO_2<- NO %>%
#   add_trace(y = ~NO2, name = 'NO2', mode = 'lines+markers')
# 
# NO_2
# 
# 
# PM10_D <- ggplotly(PM10)
# PM10_D
# saveRDS(PM10_D, "PM10_D.rds")
# 
# NOx
# NOx_D <- ggplotly(NOx)
# NOx_D 
# 
# 
# 
# ############## test ##########
# 
# ggplot(total, aes(x = Date,y = NO2)) +
#   geom_point(color = "green") +
#   labs(title = "Pollution level NO2 2018-2023", x = "year", y = "Concentration NO2") +
#   theme_minimal()
# 
# 
# 
# ggplot(total, aes(x = Date)) +
#   geom_point(aes(y = PM10, color = "PM10")) +
#   geom_point(aes(y = NOx, color = "Nitric Oxide")) +
#   geom_point(aes(y = NO2, color = "NO2")) +
#   labs(title = "Pollution level ", x = "time", y = "Concentration") +
#   theme_minimal()
# 
# ggplot(total, aes(x = time)) +
#   geom_point(aes(y = PM10, color = "PM10")) +
#   geom_point(aes(y = NOx, color = "Nitric Oxide")) +
#   geom_point(aes(y = NO2, color = "NO2")) +
#   labs(title = "Pollution level", x = "time", y = "Concentration") +
#   scale_x_time(labels = time_format("%H:%M")) +
#   theme_minimal()
# 
# 
# 
# ########## facet_wrap() #####
# #https://ggplot2.tidyverse.org/reference/facet_wrap.html 
# 
# #PM
# 
# #### this work well
# ggplot(total, aes(time,PM10)) +
#   geom_line(colour = "red") +
#   labs(title = "Pollution level PM10 2018-2023", x = "Time", y = "Concentration PM10") +
#   scale_x_time(labels = time_format("%H:%M"), breaks = breaks_width("9 hours")) +
#   facet_wrap(vars(Date),scales = "free_x")+
#   theme_gray()
# 
# ggplot(total, aes(time,NOx)) +
#   geom_line(colour = "blue") +
#   labs(title = "Pollution level PM10 2018-2023", x = "Time", y = "Concentration PM10") +
#   scale_x_time(labels = time_format("%H:%M"), breaks = breaks_width("9 hours")) +
#   facet_wrap(vars(Date),scales = "free_x")+
#   theme_gray()
# 
# ggplot(total, aes(time,NO2)) +
#   geom_line(colour = "darkgreen") +
#   labs(title = "Pollution level PM10 2018-2023", x = "Time", y = "Concentration PM10") +
#   scale_x_time(labels = time_format("%H:%M"), breaks = breaks_width("9 hours")) +
#   facet_wrap(vars(Date),scales = "free_x")+
#   theme_gray()
# 
# 
# 
# ######### Links 
# ### https://r-graph-gallery.com/animation.html 
# # # https://ggplot2.tidyverse.org/reference/facet_grid.html
