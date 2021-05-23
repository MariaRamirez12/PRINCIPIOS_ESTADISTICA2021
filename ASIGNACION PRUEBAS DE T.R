# Maria de Jesus Ramirez Navejar
# Matricula: 1965814
# Fecha: 20.05.2021
# PRINCIPIOS DE ESTADISTICA
# ASIGNACION PRUEBAS t

# Ingresar datos--------------------------------------------------------------

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7,
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)



# Exportar los datos----------------------------

# Determinar el numero de observaciones
n <- length(costal)
n

# Determinar la media
costa.media <- mean(costal)
mean(costal)

# Desviacion estandar 
costa.sd <- sd(costal)
sd(costal)

# Necesitamos responder a la siguiente pregunta: Dad la desviacion estandar (3.056)
# ¿Cual es la probabilidad de observaruna media de la muestra (cuando n= 44) de 78.91 kg 
# o de menor cantidad si la media verdadera es de 80 kg.

costa.se <- costa.sd/ sqrt(n)
costa.se

# Entonces podemos calcular el valor de T 
cost.T <- (costa.media - 80)/ costa.se
cost.T 

# Finalmente el valor de "p" puede ser calculado.
t.test(costal, nu= 80, alternative = "less")


# PREGUNTAS-----------------

# ¿Cual es el valor de p? R = 0.01132

# ¿Cual es la hipotesis acpetada?
# R = H1, hipotesis alternativa, valor de la media menor a 80

# ¿El valor medio de los costales observados son menores o mayores (significativamente)
# a los que anuncia el producto?
# R = Menores (78.91)

# ¿Cuántos grados de libertad tiene el experimento?
# R = df = 43