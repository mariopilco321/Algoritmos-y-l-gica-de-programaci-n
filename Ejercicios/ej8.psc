Algoritmo ejercicio8
		Definir nota1, nota2, nota3, asistencia, promedio Como Real
		Definir proyecto, plagio Como Entero
		Definir estado, obs_disciplinaria, obs_rendimiento Como Cadena
		Definir hayDiez, dosBajas Como Logico
		Escribir "Ingrese nota 1:"
		Leer nota1
		
		Escribir "Ingrese nota 2:"
		Leer nota2
		
		Escribir "Ingrese nota 3:"
		Leer nota3
		
		Escribir "Ingrese asistencia (%):"
		Leer asistencia
		
		Escribir "Entrego proyecto? (1=Si, 0=No):"
		Leer proyecto
		
		Escribir "Cometio plagio? (1=Si, 0=No):"
		Leer plagio
		promedio <- (nota1 + nota2 + nota3) / 3
		
		estado <- "Indefinido"
		obs_disciplinaria <- "Sin problemas"
		obs_rendimiento <- "Normal"
		Si plagio = 1 Entonces
			estado <- "Reprobado"
			obs_disciplinaria <- "Sancion por plagio"
		Sino
			Si asistencia < 70 Entonces
				estado <- "Reprobado"
			Sino
				Si proyecto = 0 Entonces
					estado <- "Recuperacion"
				Sino
					Si promedio >= 7 Entonces
						estado <- "Aprobado"
					Sino
						Si promedio >= 5 Entonces
							estado <- "Recuperacion"
						Sino
							estado <- "Reprobado"
						FinSi
					FinSi
					
				FinSi
				
			FinSi
			
		FinSi
		hayDiez <- Falso
		
		Si nota1 = 10 Entonces
			hayDiez <- Verdadero
		FinSi
		
		Si nota2 = 10 Entonces
			hayDiez <- Verdadero
		FinSi
		
		Si nota3 = 10 Entonces
			hayDiez <- Verdadero
		FinSi
		dosBajas <- Falso
		
		Si nota1 < 4 Y nota2 < 4 Entonces
			dosBajas <- Verdadero
		FinSi
		
		Si nota1 < 4 Y nota3 < 4 Entonces
			dosBajas <- Verdadero
		FinSi
		
		Si nota2 < 4 Y nota3 < 4 Entonces
			dosBajas <- Verdadero
		FinSi
		Si hayDiez Y dosBajas Entonces
			obs_rendimiento <- "Rendimiento irregular"
		FinSi
		Si nota1 >= 9 Entonces
			Si nota2 >= 9 Entonces
				Si nota3 >= 9 Entonces
					Si asistencia >= 95 Entonces
						estado <- "Aprobado con felicitacion"
						obs_rendimiento <- "Excelente rendimiento"
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir ""
		Escribir "===== RESULTADOS ====="
		Escribir "Promedio: ", promedio
		Escribir "Estado: ", estado
		Escribir "Observacion disciplinaria: ", obs_disciplinaria
		Escribir "Observacion de rendimiento: ", obs_rendimiento
		
FinAlgoritmo
