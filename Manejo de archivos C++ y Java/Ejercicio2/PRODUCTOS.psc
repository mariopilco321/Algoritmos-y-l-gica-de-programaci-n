Algoritmo PRODUCTOS

		Definir nombre, productoMayor Como Cadena
		Definir precio, subtotal, total, mayor Como Real
		Definir cantidad, n Como Entero
		
		total <- 0
		mayor <- 0
		
		Escribir "Ingrese cantidad de productos:"
		Leer n
		
		Para i <- 1 Hasta n Hacer
			
			Escribir "Nombre del producto:"
			Leer nombre
			
			Escribir "Precio:"
			Leer precio
			
			Escribir "Cantidad:"
			Leer cantidad
			
			subtotal <- precio * cantidad
			
			Escribir nombre, " Subtotal: ", subtotal
			
			total <- total + subtotal
			
			Si subtotal > mayor Entonces
				mayor <- subtotal
				productoMayor <- nombre
			FinSi
			
		FinPara
		
		Escribir "Total general: ", total
		Escribir "Producto mayor: ", productoMayor
		
FinAlgoritmo
