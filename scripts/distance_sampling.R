# charger package
library(readxl)
library(dplyr)
library(ggplot2)
library(Distance)

# Importer donnee
dist_samp <- read_excel("D:\\R Projects\\Formation Intro R - Univerisity Senghor\\datasets\\Pendjari data 2013_Mod pour devoir.xlsx")

dist_samp %>% 
  count(Espece)

# Selection pour Cob
cob <- dist_samp %>% 
  filter(Espece == "Cob") %>% 
  rename(size = `Taille groupe`, 
         distance = `Dist perp (m)`, 
         long_transect = `Longueur transect (km)`)

# Model linear simple
cob_mod <- lm(size ~ long_transect, data = cob)
summary(cob_mod)

# size = 0.1702*long_transect  +  4.7648

# Correlation
cor(cob$size, cob$long_transect) # -1 a 1

age <- c(25, 30, 50)
poid <- c(56, 69, 89)

cor(age, poid) # 0.26

# Estimation abondance
ds_mod <- ds(data = cob, 
             key = "hn", # half-normal | hr
             adjustment = NULL,
             formula = ~1
             )
summary(ds_mod)

# Densite
sup <- 1016 + 184 + 918
densite <- 260/sup














