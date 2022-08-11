dueño=[]
documento= int(input("Por favor introduzca su numero de DNI: ")) 
dueño.append(documento)
nombre =input("Por favor introduzca su nombre: ") 
dueño.append(nombre)
apellido = input("Por favor introduzca su apellido: ") 
dueño.append(apellido)
telefono = int(input("Por favor introduzca su numero de telefono: ")) 
dueño.append(telefono)
direccion = input("Por favor introduzca su direccion: ") 
dueño.append(direccion)


if dueño[0]>26000000:
    print("Su numero de telefono es: ",dueño[3])
else:
    print("DNI por debajo de los 26000000")


