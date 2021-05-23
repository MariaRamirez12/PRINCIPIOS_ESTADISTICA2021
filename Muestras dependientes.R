# Maria de Jesus Ramirez Navejar
# Matricula: 1965814
# Fecha: 23.05.2021
# PRINCIPIOS DE ESTADISTICA
# Pruebas de t muestras dependientes

# Importacion de datos --------------------------------------

Cuadro <- read.csv("https://raw.githubusercontent.com/MariaRamirez12/PRINCIPIOS_ESTADISTICA2021/main/contenido%20de%20carbono%20.csv")
head(Cuadro)
tail(Cuadro)

summary(Cuadro)

Cuadro$timepo <- factor(Cuadro$Tiempo)
summary(Cuadro)
is.factor(Cuadro$timepo)

boxplot(Cuadro$Contenido.de.carbono ~ Cuadro$timepo, col = "pink")

# Formulacion de hipotesis
# H0 = No hay diferencia entre el contenido de carbono en los tiempos.
# H1 = Existe una diferencia entre el cntenido de carbono en los tiempos. 

# Prueba de normalidad

shapiro.test(Cuadro$Contenido.de.carbono)

# Homegeneidad de varianzas 

var.test(Cuadro$Contenido.de.carbono ~ Cuadro$Tiempo)

# Prueba de t 

t.test(Cuadro$Contenido.de.carbono ~ Cuadro$timepo, paired = T)

# PREGUNTAS A RESPONDER---------------------

# ¿Cual es el valor de p en la prueba de t? R = 1.4845
# ¿Cual es el valor de p? R = 0.1718
# ¿Cuantos grados de libertad experimenta? R = 9
# ¿Cual hipotesis se acepta? R = H0
# ¿CUal es la media de difrencia entre el tiempo? R = 0.181