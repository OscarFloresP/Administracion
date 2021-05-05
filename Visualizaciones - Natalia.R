#Clientes repetidos:
#Gráfico clientes repetidos dividido por hoteles
barplot(table(DFHoteles$is_repeated_guest, DFHoteles$hotel),
        main = "Cliente repetido por tipo de hotel",
        xlab = "Tipo de hotel", ylab = "Cantidad de clientes")

legend("topright", legend = c("Repetido", "No repetido"),
       fill =  c("white", "black"))

repetidos <- DFHoteles$is_repeated_guest #Vector que contiene los valores de cliente repetido de ambos hoteles

#Gráfico de clientes repetidos de ambos hoteles
hist(repetidos, 
     main = "Clientes repetidos y no repetidos de ambos hoteles",
     xlab = "No repetidos y repetidos", ylab = "Cantidad clientes",
     col = c("red", "green"))

legend("topright", legend = c("Repetido", "No repetido"),
       fill =  c("green", "red"))

#Canal de reserva:
table(DFHoteles$distribution_channel, DFHoteles$hotel) #Tabla para visualizar los datos

a = table(DFHoteles$distribution_channel) #Tabla completa sin separar por hoteles

b = table(DFHoteles$distribution_channel, DFHoteles$hotel) #Tabla separada por hoteles

City = c(b[1], b[2], b[3], b[4], b[5]) #Contiene solo los datos del City Hotel

#Gráfico sin dividir por hoteles, se consideran ambos (tabla a)
pie(a, main = "Canal de distribución de reserva en ambos hoteles", 
    col = c("yellow", "orange", "red", "purple", "blue"), 
    border = c("yellow", "orange", "red", "purple", "blue"))

legend("topright", legend = c("TA/TO", "GDS", "Direct", "Corporate", "Undefined"),
       fill =  c("purple", "red", "orange", "yellow", "blue"))

etiquetas <- c("Corporate", "Direct", "GDS", "TA/TO", "Undefined") #Vector con el nombre de los canales

#Gráfico de los canales de reserva del City Hotel (Vector City)
pie(City, labels = etiquetas,
    main = "Canal de distribución de reserva en el City Hotel", 
    col = c("yellow", "lightblue", "orange", "mistyrose", "red"), 
    border = c("yellow", "lightblue", "orange", "mistyrose", "red"))

legend("topright", legend = c("TA/TO", "GDS", "Direct", "Corporate", "Undefined"),
       fill =  c("mistyrose", "orange", "lightblue", "yellow", "red"))

Resort = c(b[1,2], b[2,2], b[3,2], b[4,2], b[5,2]) #Contiene solo los datos del Resort Hotel

#Gráfico de los canales de reserva del Resort Hotel (Vector Resort)
pie(Resort, labels = etiquetas,
    main = "Canal de distribución de reserva en el Resort Hotel", 
    col = c("lightgreen", "gold", "black", "indianred1", "brown"), 
    border = c("lightgreen", "gold", "black", "indianred1", "brown"))

legend("topright", legend = c("TA/TO", "GDS", "Direct", "Corporate", "Undefined"),
       fill =  c("indianred1", "gold", "black", "lightgreen", "brown"))