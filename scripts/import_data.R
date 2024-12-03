# Import er des donnnees avec les fonctions de bases
dist_data <- read.csv("datasets/Pendjari data 2013_Mod pour devoir.csv", sep = ",")

# importer avec package readxl
library(readxl)

dist_data <- read_excel("datasets/Pendjari data 2013_Mod pour devoir.xlsx",
                        sheet = 1)

enquete <- read_excel("datasets/Classeur_Base_Données_Enquete.xlsx")
