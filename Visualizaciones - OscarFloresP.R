#Comida pedida
#Grafico de comida pedida
barplot(table(hotel_bookings$hotel,hotel_bookings$meal),
        main = "tipo de Hotel por la comida",
        xlab = "tipo de comida", ylab ="cantidad de huespedes")


legend("topright", legend = c("City Hotel", "Resort Hotel"),
       fill =  c("white", "black"))


#Tiempo de espera de un huesped
#Grafico de Tiempo de espera de un huesped por el tipo de hotel
barplot(table(hotel_bookings$days_in_waiting_list,
              hotel_bookings$hotel),
        main = "tiempo de espera del huesped por Hotel",
        xlab = "tipo de hotel", ylab ="cantidad de huespedes")