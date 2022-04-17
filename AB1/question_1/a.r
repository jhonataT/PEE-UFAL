# install.packages("readxl")

library("readxl")

url <- "C:\\Users\\jhona\\OneDrive\\Documents\\R\\ENEM_2019.xlsx"

db <- read_excel(url)

# BoxPlot Graph:
notas <- db$NOTA_ENEN
summary(notas)

boxplot(notas, main = "BoxPlot: Notas ENEM 2019 (AL)", col = "red")

# absolute and relative frequency:

limitesclas <- c(quantile(notas))
classes <- c("F total (318.4 - 455.20)", 
             "Dá pra tentar FIES (455.20 - 497.22)", 
             "Talvez, S.I no Ifal (497.22 - 553.04)", 
             "CC na UFAL (553.04 - 796.14)")

freq <- table(cut(notas, breaks = limitesclas, labels = classes))
freqRel <- prop.table(freq)

freqAc <- cumsum(freq)
freqRelAc <- cumsum(freqRel)

tabelafreq <- cbind(freq,
                 freqRel = round(freqRel, digits = 2),
                 freqAc = round(freqAc, digits = 2),
                 freqRelAc = round(freqRelAc, digits = 2)
            )

tabelafreq

