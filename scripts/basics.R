# Type de donnee
12 # nombre entier => double
1.5 # nombre decimal => float 
# double + float => numeric
"Stan" # caracter => character
FALSE # logique => boolean
TRUE  # logique => boolean

# Object en R
age = 12
age
age + 4

age <- 18 # ok
age <- 18 # Alt + -
20 -> age

taille <- 1.5

nom <- "Stanislas"

# Verifier type de donnee
class(age)
class(taille)
class(nom)

# Convertir type de donnee
age <- "15"
class(age)
age_convertir <- as.numeric(age)
class(age_convertir)

sex <- 0
sex_convertir <- as.character(sex)
