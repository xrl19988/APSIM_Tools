library(dplyr)
library(ggplot2)
# thermal time ---------------------------------------------
dt <- data.frame(x = c(0,26,37), y = c(0,26,0))

dt %>% 
  ggplot(aes(x = x, y = y))+
  geom_line(size=.8)+
  scale_x_continuous(expand = c(0,0))+
  scale_y_continuous(expand = c(0,0))+
  labs(x="Temperature (°C)", y = "Thermal time")+
  theme_classic()

# thermal time ---------------------------------------------
df <- data.frame(x = c(0,15,25,35), y = c(0,1,1,0))

df %>% 
  ggplot(aes(x = x, y = y))+
  geom_line(size=.8)+
  scale_x_continuous(expand = c(0,0))+
  scale_y_continuous(expand = c(0,0))+
  labs(x="Weighted temperature (°C)", y = "FT")+
  theme_classic()
