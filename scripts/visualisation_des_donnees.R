library(readxl)
library(dplyr)
library(ggplot2) # pour les visualisations elegantes

# Import data
enquete <- read_excel("datasets/Classeur_Base_Données_Enquete.xlsx")

## Selectionner colonnes
enquete_sub <- enquete %>%
  select(`Nom du Village`, Sexe, Age)

enquete_sub_prop <- enquete_sub %>% 
  count(Sexe) %>% 
  mutate(prop = (n/sum(n))*100)

## Barplot
ggplot()+
  geom_bar(data = enquete_sub, mapping = aes(x = Sexe))

ggplot()+
  geom_col(data = enquete_sub_prop, mapping = aes(x = Sexe, y = prop))+
  labs(x = "Sexes", y = "Proportion (%)")

## Boxplot
ggplot()+
  geom_boxplot(data = enquete_sub, mapping = aes(x = Sexe, y = Age))
