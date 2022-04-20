library(readxl)

url <- "C:\\Users\\jhona\\OneDrive\\Documents\\R\\ENEM_2019.xlsx"

db <- read_excel(url)

notas <- cut(db$NU_NOTA_REDACAO, breaks = quantile(db$NOTA_ENEN))

idade <- cut(db$NU_IDADE, breaks = quantile(db$NU_IDADE))

tab <- table(idade, notas)

barplot(
    tab, 
    col = c("green", "orange", "yellow", "blue"), 
    main = "Frequência de Notas x Idade",xlab = "Notas", ylab = "Frequência", 
    beside = TRUE, ylim = c(0, 15000), legend = TRUE,
    args.legend = list(x = "center")
)