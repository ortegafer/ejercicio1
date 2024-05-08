library(readxl)
datos <- read_excel("C:/bdata/Projectos/data science/Reto4/Ejer1Mio/ejercicio1/datos/online_retail_II.xlsx")
str(datos)
head(datos)
dim(datos)
#numero pedidos
length(unique(datos$Invoice))
