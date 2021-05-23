# Tarea (Asignacion 5) Analisis de correlacion 
# Maria de Jesus Ramirez Navejar
# Matricula: 1965814
# Fecha: 24.04.2021
# Principios de estadisticas

# EJERCICIO 1 ----------------------------------------------
# Cuadro 1. Abundacia de las efimeras de un arroyo y la velocidad de un arroyo.

speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
head(speed)

abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)
head(abundance)

# Media de speed es 15
mean(speed)

# Desviacion estandar de speed 12.46
sd(speed)

# Media de abundance 19.5
mean(abundance)

# Desviacion estandar 17.36
sd(abundance)

# Diagrama de dispercion 
plot(speed, abundance, col= "red", xlab = "Variable independiente", ylab= "Variable dependiente")

# Correlacion de Person´s

cor.test(speed, abundance)

# Grados de libertad: 6 
# Valor de p: 0.008393
# Valor de la correlacion: 0.8441408

# EJERCICIO 2 -------------------------------------
# Conjunto de datos: Composicion del suelo, caracteristicas fisicas y quimicas. 

# Imortacion de datos a R
suelos <- read.csv("https://raw.githubusercontent.com/MariaRamirez12/PRINCIPIOS_ESTADISTICA2021/main/suelo.csv")
head(suelos)

# Diagrama de dispercion pH-N
plot(suelos$pH, suelos$N)

# Correlacion de Pearson´s pH-N es: 0.6366
cor.test(suelos$pH, suelos$N)

# Diagrama de dispercion pH-Dens
plot(suelos$pH, suelos$Dens)

# Correlacion de Pearson´s pH-Dens es: -0.5890264
cor.test(suelos$pH, suelos$Dens)

# Diagrama de sipercion pH-P 
plot(suelos$pH, suelos$P)

# Correlacion de Pearson´s pH-P es:0.5910
cor.test(suelos$pH, suelos$P)

# Diagrama de dispercion pH-Ca
plot(suelos$Ca, suelos$Ca)

# Corrleacion de Pearson´s pH-Ca es: 0.8086293
cor.test(suelos$pH, suelos$Ca)

# Diagrama de dispercion pH-Mg
plot(suelos$pH, suelos$Mg)

# Corrleacion de Pearson´s pH-Mg es: -0.3957821
cor.test(suelos$pH, suelos$Mg)

# Diagrama de dispercion pH-K
plot(suelos$pH, suelos$K)

# Correlacion de Pearson´s pH-K es: 0.5795
cor.test(suelos$pH, suelos$K)

# Diagrama de dispercion pH-Na
plot(suelos$pH, suelos$Na)

# Correlacion de Pearson´s pH-Na es: -0.6932
cor.test(suelos$pH, suelos$Na)

# Diagrama de dispercion pH-Conduct
plot(suelos$pH, suelos$Conduct)

# Correlacion de Pearson´s pH-Conduct es: -0.7648
cor.test(suelos$pH, suelos$Conduc)

