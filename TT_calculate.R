dt <- readxl::read_excel("D:/Desktop/APSIM_TEST/templatev2.xlsx",sheet=1)

library(dplyr)
dt1 <- dt[42:291,] %>% select(Date,wtTT,wtStage)

dt1$TT_rel <- NA
flower_i <- which(dt1$wtStage == "Flowering")[1]
dt1$TT_rel[flower_i] <- 0  # set anthesis TT = 0

# TT after anthesis
for (i in (flower_i+1):nrow(dt1)) {
  dt1$TT_rel[i] <- dt1$TT_rel[i-1] + dt1$wtTT[i]
}

# TT before anthesis
for (i in (flower_i-1):1) {
  dt1$TT_rel[i] <- dt1$TT_rel[i+1] - dt1$wtTT[i]
}
