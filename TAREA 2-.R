# Maria de Jesus Ramirez Navejar 
# Matricula: 1965814
# TAREA 2


# Datos  ------------------------------------------------------------------


# Importacion de datos de excel a RStudio

conjunto <- read.csv("https://raw.githubusercontent.com/MariaRamirez12/PRINCIPIOS_ESTADISTICA2021/main/DBH_1.cvs.csv")
head(conjunto)


# Altura ------------------------------------------------------------------


# Datos de la variable Altura
Altura <- c(21.46, 18.71, 18.28, 17.82,17.45, 17.43, 17.22, 17.07, 16.84, 16.79,
            16.73, 16.25, 16.06, 16.03, 15.34, 15.15, 14.90, 14.81, 14.78, 14.66,
            14.61,14.60, 14.48, 14.46, 14.30, 14.18, 13.93, 13.84, 13.75,13.40, 
            13.20,13.20, 12.80, 12.68, 12.56, 12.34, 12.01, 11.70, 11.52,11.38,
            11.31, 11.22, 10.88, 10.40, 10.18, 10.00, 8.79, 8.69, 8.50,8.47)

# La media de los datos de la altura fue 13.94
mean(Altura)

# Datos iguales o menores a la media de la altura
H.media <- subset (Altura, conjunto <= 13.66)
head(H.media)

# Datos menores a 16.5 
H.16 <- subset(Altura,conjunto < 16.5)




# Vecinos -----------------------------------------------------------------

# Conjunto de datos "Vecinos"

Vecinos <- c(4, 3, 5, 4, 6, 3, 2, 2, 4, 5, 3, 6, 2, 2, 4, 3, 0, 1, 4, 3,
             5, 4, 1, 4, 2, 4, 3, 3, 0, 1, 3, 5, 4, 6, 4, 2, 0, 3, 4, 6, 3,
             3, 4, 5, 4, 3, 6, 5, 1, 3)

# Arboles con menor numero de vecinos iguales o menores a 3
Vecinos3 <- subset(Vecinos, conjunto <= 3)

# Arboles con menor numero de vecinos mayores a 4 
Vecinos4 <- subset(Vecinos,conjunto > 4)



# Diametro  ---------------------------------------------------------------

# Conjunto de datos "Daimetro" 

Diametro <- c(15.3, 17.8, 18.2, 9.7, 10.8, 14.1, 17.1, 20.6, 18.2, 16.1,
              14.2, 14.8, 19.1, 16.7, 18.9, 12.4, 17.3, 22.7, 15.1, 17.7, 13.4,
              16.2,18.5, 15, 18.8, 15.8, 16.1, 15.4, 17.8, 18.5, 14.1, 14.8, 
              15.5, 13.8, 13.0 ,18.2, 22.3, 17.8, 13.1, 12.8, 13.3, 15.6, 16.6,
              13, 10.2, 14.4, 7.7, 9.9, 20.4, 20.9)

# La media del diamtro es 15.794
mean(Diametro)

# Diamtros menores a la media 
DBHmedia <- subset(Diametro, conjunto < 17.79)

# Diamtros mayores a 16
DBH16 <- subset(Diametro, conjunto > 16)



# Especie -----------------------------------------------------------------

# Conjunto de datos "Especie"

Especie <- c("F, F, C, H, H, C, C, C, F, F, H, H, F, C, C, H, H, F, C,
C, C, C, F, F, F, H, H, C, C, C, C, C, F, F, F, H, H, H, C, C, C, F, H,
C, C, F, C, C, H, H, Cedro Rojo, Tsuga Heterófila, Douglasia verde") 

# Observaciones menores o iguales a 16.9
Especie <- subset(Especie, conjunto <= 16.9)

# Observaciones mayores a 18.5
Especie <- subset(Especie, conjunto  > 18.5)



# Visualizacion de datos  -------------------------------------------------

# Histograma Altura

hist(Altura)

# Histograma "Media" Altura

hist(H.media)

# Histograma datos menores Altura 

hist(H.16)

# Histograma Vecinos 

hist(Vecinos)

# Histograma vecinos iguales o menores a 3 

hist(Vecinos3)

# Histograma vecinos mayores a 4

hist(Vecinos4)

# Histograma diametro 

hist(Diametro)

# Histograma diametro menores a la media 

hist(DBHmedia)

# Histograma diametro mayores a 16

hist(DBH16)



# Estadistica basica  -----------------------------------------------------

# Altura

#La media de la altura es 13.9432
mean(Altura)

# Desvicion estandar es 2.90
sd(Altura)

# Valores menores a la media 
mean(H.media)

sd(H.media)

# Valores a 16.5
mean(H.16)

sd(H.16)


# Vecinos

# Media de vecinos es 3.34
mean(Vecinos)

# Desvviacion estandar vecinos es 1.5
sd(Vecinos)

# Media vecinos3
mean(Vecinos3)

# Desviacion estandar vecinos3
sd(Vecinos3)

# Media vecinos4
mean(Vecinos4)

# Desviacion estandar vecinos4
sd(Vecinos4)

# Diametro

# Media diametro es 15.794
mean(Diametro)

# Desviacion estrandar media es 3.22
sd(Diametro)

# Media de diametros menores a la media 
mean(DBHmedia)

# Desviacion estandar menores a la media
sd(DBHmedia)

# Media de diametros mayores a 16
mean(DBH16)

# Desviacion estandar de diamtros mayores a 16 
sd(DBH16)

