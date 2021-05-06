#Cargar los datos
DFHoteles <- read.csv("hotel_bookings.csv")
View(DFHoteles)
#Inspeccionar los datos
nrow(DFHoteles)
ncol(DFHoteles)
colnames(DFHoteles)
str(DFHoteles)
summary(DFHoteles)
#Mis Visualizaciones
#Primer grafico
table(DFHoteles$arrival_date_year)
table(DFHoteles$arrival_date_month)
table(DFHoteles$arrival_date_year, DFHoteles$arrival_date_month)
barplot(table(DFHoteles$arrival_date_year, DFHoteles$arrival_date_month), main = "Llegada de huéspedes anual por mes", xlab = "Meses", ylab = "Nro de Huéspedes", col = c("blue", "yellow", "red"))
legend(x = "bottomright", legend = c("2015", "2016", "2017"), fill = c("blue", "yellow", "red"), title = "Año", cex = 0.6)
#Segundo grafico
table(DFHoteles$reservation_status)
table(DFHoteles$arrival_date_year)
table(DFHoteles$reservation_status, DFHoteles$arrival_date_year)
barplot(table(DFHoteles$reservation_status, DFHoteles$arrival_date_year), main = "Estado de reservas de huéspedes por año", xlab = "Año", ylab = "Nro de Huéspedes", col = c("darkslateblue", "gold3", "khaki"))
legend(x = "bottomright", legend = c("canceled", "check-out", "No-show"), fill = c("darkslateblue", "gold3", "khaki"), title = "Estado de Reserva", cex = 0.6)
