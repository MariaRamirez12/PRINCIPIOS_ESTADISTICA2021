# 13.05.2021
# PRINCIPIOS DE ESTADISTICA
# Pruebas de t de dos muestras

copa <- read.csv("https://raw.githubusercontent.com/MariaRamirez12/PRINCIPIOS_ESTADISTICA2021/main/canopy.csv")
head(copa)

summary(copa)
copa$Forest <- factor(copa$Forest)
summary(copa)

boxplot(copa$Cnpy ~ copa$Forest, col = "blue")


shapiro.test(copa$Cnpy)
var.test(copa$Cnpy ~ copa$Forest)

t.test(copa$Cnpy ~ copa$Forest, var.equal=TRUE)


# Ejercicio de practica ------------------------------------------

summary("LAI4")
 # (no me sale) copa$LAI4 <- factor(copa$LAI4)
summary("LAI4")

boxplot(copa$Cnpy ~ copa$LAI4, col = "red")

shapiro.test(copa$Cnpy)

