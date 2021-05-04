#Cargar los datos
DFHoteles <- read.csv("hotel_bookings.csv")
View(DFHoteles)
#Inspeccionar los datos
nrow(DFHoteles)
ncol(DFHoteles)
colnames(DFHoteles)
str(DFHoteles)
summary(DFHoteles)
table(DFHoteles$reserved_room_type)
table(DFHoteles$assigned_room_type)
