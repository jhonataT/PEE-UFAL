# Questão 2 lista 1
#install.packages("tidyverse")
library(readxl)
library(tidyverse)

db <- read_excel("C:\\Users\\Jorge\\Downloads\\ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
municipio <- db %>% filter(db$NO_MUNICIPIO_NASCIMENTO == "Viçosa")

tre.sex.tab <- with(municipio, table(municipio$TP_LINGUA, municipio$IN_TREINEIRO))

barplot(tre.sex.tab, col = c("red", "green"),
        legend = TRUE, beside = TRUE, args.legend = list(x = "topright"))

civ.tab <- table(municipio$TP_ESTADO_CIVIL)
pie(civ.sex.tab, label = c("Solteiro", "Viúvo", "Casado", "Divorciado"), 
    radius = 1)