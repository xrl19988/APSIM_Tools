dt <- readxl::read_excel("D:/Desktop/APSIM_TEST/factorialv2.xlsx",sheet = 1)

library(ggplot2)
dt %>% 
  ggplot(aes(x = Date,y=wtFN))+
  geom_point()+
  geom_line(aes(group=1))+
  geom_text(aes(y=0.5,label=wtStage),angle=45,size=1)+
  facet_wrap(.~wtIrriPattern)
