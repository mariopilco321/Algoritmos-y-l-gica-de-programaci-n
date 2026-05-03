Algoritmo ESTUDIANTES
		Definir nombre Como Cadena
		Definir n1, n2, n3, promedio, suma Como Real
		Definir total, aprobados Como Entero
		
		suma <- 0
		total <- 0
		aprobados <- 0
		
		Escribir "Ingrese cantidad de estudiantes:"
		Leer total
		
		Para i <- 1 Hasta total Hacer
			
			Escribir "Nombre:"
			Leer nombre
			
			Escribir "Nota 1:"
			Leer n1
			
			Escribir "Nota 2:"
			Leer n2
			
			Escribir "Nota 3:"
			Leer n3
			
			promedio <- (n1 + n2 + n3) / 3
			
			Escribir "Promedio: ", promedio
			
			Si promedio >= 9 Entonces
				Escribir "Estado: Excelente"
			Sino
				Si promedio >= 7 Entonces
					Escribir "Estado: Bueno"
					aprobados <- aprobados + 1
				Sino
					Escribir "Estado: Reprobado"
				FinSi
			FinSi
			
			suma <- suma + promedio
			
		FinPara
		
		Escribir "Aprobados: ", aprobados
		Escribir "Promedio general: ", suma / total

FinAlgoritmo
