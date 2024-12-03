# install package
# install.packages("readxl")
# install.packages(c("readxl", "ada", "openai"))

# Verifier packages installes
rownames(installed.packages())

# Packages a installer
pgk_to_install <- c("readxl", "Distance", "dplyr", "ggplot2")

"readxl" %in% rownames(installed.packages())

# Installer si non disponible
if (!"readxl" %in% rownames(installed.packages())) {
  install.packages("readxl")
}


# Install plusieurs package en un coup s'ils n'existent pas
for (pgk in pgk_to_install) {
  if (!pgk %in% rownames(installed.packages())) {
    install.packages(pgk)
  }
}







