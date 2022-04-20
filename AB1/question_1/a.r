library("readxl")

url <- "C:\\Users\\jhona\\OneDrive\\Documents\\R\\ENEM_2019.xlsx"

db <- read_excel(url)
notas <- db$NOTA_ENEN
summary(notas)
boxplot(notas, col = "red")

limitesclas <- c(quantile(notas))
classes <- c("318.40 - 455.20", 
             "455.20 - 497.22", 
             "497.22 - 553.04", 
             "553.04 - 796.14")

freq <- table(cut(notas, breaks = limitesclas, labels = classes))
freqRel <- prop.table(freq)

freqAc <- cumsum(freq)
freqRelAc <- cumsum(freqRel)

tabelafreq <- cbind(
               freq,
               freqRel = round(freqRel, digits = 2),
               freqAc = round(freqAc, digits = 2),
               freqRelAc = round(freqRelAc, digits = 2)
          )

tabelafreq

#FIM