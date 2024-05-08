library(readxl)
datos <- read_excel("C:/bdata/Projectos/data science/Reto4/Ejer1Mio/ejercicio1/datos/online_retail_II.xlsx")
str(datos)
head(datos)
dim(datos)
#numero pedidos
length(unique(datos$Invoice))

#precio medio de producto por envio

library(dplyr)
datos %>% group_by(Invoice) %>% 
  summarise(Precio_medio= mean(Price))

#numero de productos por pedido

datos %>% group_by(Invoice) %>% 
  summarise(Cantidad= sum(Quantity))

#precio por pedido
datos %>% group_by(Invoice) %>% 
  summarise(Precio= sum(Price))

#hola caracola 
