library(dplyr) # package pour maniulation des donnnees

# Impoter donnees
enquete <- read_excel("datasets/Classeur_Base_Données_Enquete.xlsx")

## Selectionner colonnes
enquete_sub <- enquete %>%
  select(`Nom du Village`, Sexe, Age)

# enquete_sub <- enquete_sub %>%
#   select(-Age)

## Filtre sur des ensembles
enquete_homme <- enquete_sub %>% # Ctl + Shift + M (Keyboard in english)
  filter(Sexe == "Homme")

enquete_homme_p50 <- enquete_sub %>% 
  filter(Sexe == "Homme" & Age > 50)

## Prendre les 10 premieres lignes
enquete_sub %>% 
  slice(15:20)

enquete_sub %>% 
  slice_tail(n = 10)

## Ajouter column
enquete_sub_c <- enquete_sub %>% 
  mutate(tranche_age = ifelse(Age <= 20, "Adult", "Vieux")) %>% 
  mutate(tranche_age = case_when(Age <= 20 ~ "Jeune",
                                 Age > 20 & Age <= 40 ~ "Adult",
                                 Age > 40 ~ "Vieux"))


## Resume sur donnnee
enquete_sub %>% 
  count(Sexe) %>% 
  mutate(prop = (n/sum(n))*100)

## Resume par group
enquete_sub %>% 
  group_by(Sexe) %>% 
  summarise(age_moyen = mean(Age),
            age_median = median(Age))
