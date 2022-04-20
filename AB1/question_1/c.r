url <- "C:\\Users\\jhona\\OneDrive\\Documents\\R\\ENEM_2019.xlsx"

db <- read_excel(url)
notas <- db$NOTA_ENEN
sexo <- db$TP_SEXO

quartis <- c(quantile(notas))

notas.cut <- cut(notas, breaks = quartis)

sex.freq.tab <- table(sexo, notas.cut)

barplot(
    sex.freq.tab, 
    col = c("red", "blue"), 
    main = "Freqência de Notas x Sexo",
    xlab = "Notas", 
    ylab = "Frequência", 
    beside = TRUE, 
    legend = TRUE
)