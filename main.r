library(readr)

mtcars <- read.csv2("Downloads/mtcars.csv");

mpgColumn <- mtcars$mpg;
dispColumn <- mtcars$disp;

print(mpgColumn)

# Minimo
min(mpgColumn);
# Máximo
max(mpgColumn);

# Média
mean(mpgColumn);

# Mediana
median(mpgColumn);

# Desvio Padrão (standard deviation)
sd(mpgColumn);

# Quartis
quantile(mpgColumn);

# Histograma
hist(mpgColumn);

# Boxplot
boxplot(mpgColumn, main='Boxplot: MPG', col='red');

# Boxplot comparativo
boxplot(
  mtcars$disp~mtcars$hp,
  main='Boxplot Comparativo Disp X HP',
  col=c('red', 'blue')
);

qsecColumn <- mtcars$qsec;

# Quartis
quantiles <- quantile(qsecColumn)

# Frequencias Absolutas, relativas e suas respectivas acumuladas:
freq <- table(qsecColumn);
freqRel <- prop.table(freq);
freqAc <- cumsum(freq);
freqRelAc <- cumsum(freqrel);

tableaf <- cbind(
  freq,
  freqAc = round(freqAc, digits = 2),
  freqRel = round(freqrel * 100, digits = 2),
  freqRelAc = round(freqRelAc  * 100, digits = 2)
);

tableaf;

hist(qsecColumn);

  # Com a coluna hp, gerar um histograma e elaborar uma tabela de freq.
  # com as classes sugeridas pelo histograma
hist(mtcars$hp);

# Criar a tabela de frequência com classes sugeridas pelo histograma
# Vamos usar 5 classes com amplitude de 50 (50, 100, 150, 200, etc.)
breaks <- seq(min(mtcars$hp), max(mtcars$hp) + 50, by = 50)
hp_classes <- cut(mtcars$hp, breaks, include.lowest = TRUE, labels = FALSE)

tabela_frequencia <- table(hp_classes)
freq_table <- data.frame(Classe = paste(breaks[-length(breaks)], "-", breaks[-1]),
                         Frequência = tabela_frequencia)

print(freq_table)


# Para gerar a matriz de frequências e os gráficos de barras "motor x marcha" a

# Frequências de motor por marcha
freq_motor_marcha <- table(mtcars$motor, mtcars$marcha);

# Frequências de marcha por motor
freq_marcha_motor <- table(mtcars$marcha, mtcars$motor);

# Plotar o gráfico de barras "motor x marcha" usando barplot
barplot(freq_motor_marcha, beside = TRUE, col = c("blue", "red"),
        legend = rownames(freq_motor_marcha), xlab = "Motor", ylab = "Frequência",
        main = "Frequência de Motor por Marcha")

# Plotar o gráfico de barras "marcha x motor" usando barplot
barplot(freq_marcha_motor, beside = TRUE, col = c("blue", "red"),
        legend = colnames(freq_marcha_motor), xlab = "Marcha", ylab = "Frequência",
        main = "Frequência de Marcha por Motor")

# Criar o data frame com as colunas "Marca" e "Cilindrada"
data <- data.frame(Marca = mtcars$marca, Cilindrada = mtcars$cyl)

# Ordenar o data frame pela coluna "Cilindrada" (opcional, apenas para melhor visualização)
data <- data[order(data$Cilindrada), ]

# Plotar o gráfico de barras "Marca x Cilindrada"
barplot(data$Cilindrada, names.arg = data$Marca, col = "lightblue", main = "Cilindrada por Marca",
        xlab = "Marca", ylab = "Cilindrada")

