library("readxl")

url <- "C:\\Users\\jhona\\OneDrive\\Documents\\R\\ENEM_2019.xlsx"

db <- read_excel(url)
notas <- db$NOTA_ENEN


hist(
    notas, 
    xlab = "Notas", 
    ylab = "Frequência", 
    ylim = c(0, 20000),
    main="Histograma de notas"
)
