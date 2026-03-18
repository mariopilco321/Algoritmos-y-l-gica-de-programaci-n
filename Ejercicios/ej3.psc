Algoritmo ejercicio3
		Definir lado1, lado2, lado3, altura, angulo, area Como Real
		Definir tipoLados, tipoAngulo, validez, mensaje Como Cadena
		
		Escribir "Ingrese lado 1:"
		Leer lado1
		Escribir "Ingrese lado 2:"
		Leer lado2
		Escribir "Ingrese lado 3:"
		Leer lado3
		Escribir "Ingrese altura:"
		Leer altura
		Escribir "Ingrese angulo principal:"
		Leer angulo
		
		Si (lado1 + lado2 > lado3) Y (lado1 + lado3 > lado2) Y (lado2 + lado3 > lado1) Entonces
			validez <- "Triangulo valido"
			
			Si lado1 = lado2 Y lado2 = lado3 Entonces
				tipoLados <- "Equilatero"
			Sino
				Si lado1 = lado2 O lado1 = lado3 O lado2 = lado3 Entonces
					tipoLados <- "Isosceles"
				Sino
					tipoLados <- "Escaleno"
				FinSi
			FinSi
			
			Si angulo < 90 Entonces
				tipoAngulo <- "Acutangulo"
			Sino
				Si angulo = 90 Entonces
					tipoAngulo <- "Rectangulo"
				Sino
					tipoAngulo <- "Obtusangulo"
				FinSi
			FinSi
			
			area <- (lado1 * altura) / 2
			
			Si altura > lado1 O altura > lado2 O altura > lado3 Entonces
				mensaje <- "Advertencia: altura inconsistente"
			Sino
				mensaje <- "Altura consistente"
			FinSi
			
			Escribir validez
			Escribir tipoLados
			Escribir tipoAngulo
			Escribir "Area:", area
			Escribir mensaje
		Sino
			Escribir "No forma un triangulo"
		FinSi
FinAlgoritmo
