Algoritmo ejercicio2
		
		Definir promedio, asistencia Como Real
		Definir materias, ingresos, proyectos Como Entero
		Definir tipo, razon_academica, razon_economica, observacion Como Cadena
		
		Escribir "Promedio: "
		Leer promedio
		
		Escribir "Materias perdidas: "
		Leer materias
		
		Escribir "Asistencia (%): "
		Leer asistencia
		
		Escribir "Ingresos bajos? (1=No,0=Si): "
		Leer ingresos
		
		Escribir "Participa en proyectos? (1=Si,0=No): "
		Leer proyectos
		
		// PRIORIDAD 1
		Si asistencia < 80 Entonces
			tipo <- "Sin beneficio"
			razon_academica <- "Asistencia insuficiente"
			razon_economica <- "No aplica"
			observacion <- "Pierde cualquier beca"
			
		Sino
			Si promedio < 7 Entonces
				tipo <- "Sin beneficio"
				razon_academica <- "Promedio bajo"
				razon_economica <- "No aplica"
				observacion <- "No cumple requisito minimo"
				
			Sino
				// BECA COMPLETA
				Si promedio >= 9 Y asistencia >= 90 Y materias = 0 Entonces
					tipo <- "Beca completa"
					razon_academica <- "Alto rendimiento"
					razon_economica <- "No necesaria"
					observacion <- "Excelente estudiante"
					
				Sino
					// BECA PARCIAL
					Si promedio >= 8 Y asistencia >= 85 Entonces
						tipo <- "Beca parcial"
						razon_academica <- "Buen rendimiento"
						razon_economica <- "Apoyo moderado"
						observacion <- "Cumple requisitos"
						
					Sino
						tipo <- "Ayuda materiales"
						razon_academica <- "Rendimiento medio"
						razon_economica <- "Apoyo basico"
						observacion <- "Apoyo minimo"
					FinSi
				FinSi
			FinSi
		FinSi
		
		// MEJORA POR PROYECTOS + INGRESOS BAJOS
		Si proyectos = 1 Y ingresos = 0 Entonces
			Si tipo = "Ayuda materiales" Entonces
				tipo <- "Beca parcial"
				observacion <- "Mejorado por esfuerzo y necesidad"
			Sino
				Si tipo = "Beca parcial" Y materias <= 1 Entonces
					tipo <- "Beca completa"
					observacion <- "Ascenso por merito"
				FinSi
			FinSi
		FinSi
		
		Escribir "Tipo de ayuda: ", tipo
		Escribir "Razon academica: ", razon_academica
		Escribir "Razon economica: ", razon_economica
		Escribir "Observacion: ", observacion
FinAlgoritmo
