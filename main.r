library(readr)

mtcars <- read.csv2("C:/Users/Jhonata/Downloads/mtcars.csv");

mpgColumn <- mtcars$mpg;

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
