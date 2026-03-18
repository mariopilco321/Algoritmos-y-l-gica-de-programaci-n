Algoritmo ejercicio1
		
		Definir credencial, curso, retraso, faltas, prioridad Como Entero
		Definir estado, motivo Como Cadena
		
		Escribir "¿Tiene credencial? (1=Si,0=No): "
		Leer credencial
		
		Escribir "¿Pertenece al curso? (1=Si,0=No): "
		Leer curso
		
		Escribir "Minutos de retraso: "
		Leer retraso
		
		Escribir "Numero de faltas: "
		Leer faltas
		
		Si credencial = 0 Entonces
			estado <- "No ingresa"
			motivo <- "No porta credencial"
			prioridad <- 1
			
		Sino
			Si curso = 0 Entonces
				estado <- "No ingresa"
				motivo <- "No pertenece al curso"
				prioridad <- 1
				
			Sino
				Si faltas >= 5 Entonces
					estado <- "No ingresa"
					motivo <- "Muchas faltas acumuladas"
					prioridad <- 1
					
				Sino
					Si retraso > 10 Entonces
						estado <- "No ingresa"
						motivo <- "Atrasado"
						prioridad <- 2
						
					Sino
						Si faltas >= 3 Entonces
							estado <- "Ingresa con advertencia"
							motivo <- "Faltas acumuladas"
							prioridad <- 3
							
						Sino
							Si retraso > 0 Entonces
								estado <- "Ingresa con advertencia"
								motivo <- "Llega tarde"
								prioridad <- 3
								
							Sino
								estado <- "Ingresa normalmente"
								motivo <- "Cumple todas las condiciones"
								prioridad <- 4
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		Escribir "Estado: ", estado
		Escribir "Motivo: ", motivo
		Escribir "Prioridad: ", prioridad
FinAlgoritmo
