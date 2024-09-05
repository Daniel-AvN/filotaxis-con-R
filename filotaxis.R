
# FILOTAXIS 

# Paso 1: Leer la introducción al proyecto y cargar el paquete.

# Configurar el entorno gráfico
options(repr.plot.width = 4, repr.plot.height = 4)

# Cargar el paquete ggplot2
library(ggplot2)

# Paso 2: Calentamiento - Graficar puntos en un círculo
t <- seq(0, 2*pi, length.out = 50) 
x <- sin(t) 
y <- cos(t) 
df <- data.frame(t, x, y) 

p <- ggplot(df, aes(x, y)) 
p + geom_point()

# Paso 3: Crear una espiral usando el ángulo dorado
points <- 500 
angle <- pi * (3 - sqrt(5)) 

t <- (1:points) * angle 
x <- sin(t) 
y <- cos(t) 
df <- data.frame(t, x, y) 

p <- ggplot(df, aes(x*t, y*t)) 
p + geom_point()

# Paso 4: Eliminar elementos innecesarios y cambiar el fondo
p <- p + theme_void()
p + geom_point() +
  theme(panel.background = element_rect(fill = "white"))

# Paso 5: Ajustar estética: tamaño, color y transparencia
p + geom_point(size = 8, alpha = 0.5, color = "darkgreen")

# Paso 6: Crear un gráfico que parezca un diente de león
p + geom_point(aes(size = t), shape = "*") +
  theme(legend.position = "none")

# Paso 7: Crear un gráfico de girasol
# Paso 7: Crear un gráfico de girasol modificado
p + geom_point(shape = 6, color = "yellow", size = 4) +  
  theme(panel.background = element_rect(fill = "darkmagenta")) 


# Paso 8: Cambiar el ángulo para observar diferentes patrones
angle <- 2.0 
t <- (1:points) * angle
df <- data.frame(t, x = sin(t), y = cos(t))
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(shape = 6, color = "yellow", size = 4)+ theme_void() +  
  theme(panel.background = element_rect(fill = "darkmagenta")) 

# Paso 9: Crear flores imaginarias modificando parámetros
angle <- 13 * pi / 180 
points <- points * 2 
t <- (1:points) * angle
df <- data.frame(t, x = sin(t), y = cos(t))
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(alpha = 0.1, shape = 1, color = "magenta4", size = 80) +
  theme(panel.background = element_rect(fill = "white")) + theme_void()

 
