library("readxl")

url <- "C:\\Users\\jhona\\OneDrive\\Documents\\R\\ENEM_2019.xlsx"

db <- read_excel(url)

plot(
    db$NOTA_ENEN, 
    db$NU_NOTA_MT, 
    col="red", 
    ylab = "Nota Matemática", 
    xlab = "Nota ENEM"
)
