#Ejercicio numero 6
Historial2=(23500, 5960, 2300, 10200, 8900)
gastos_totales_Frida=sum(Historial2)

def gastosSuperiores (tuplas):
    contador=0
    for i in tuplas:
        if i > 5000:
            contador+=1
    print(f"Los gastos han superado los $5000 {contador} veces.")

print(f"Los gastos totales por atención a Frida son: ${gastos_totales_Frida}")
gastosSuperiores(Historial2)