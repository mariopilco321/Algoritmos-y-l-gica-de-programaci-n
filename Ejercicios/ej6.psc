Algoritmo ejercicio6
		Definir estudiantes, tipo_transporte, dias, alimentacion, descuento_inst Como Entero
		Definir costo_hospedaje Como Real
		
		Definir costo_transporte, costo_hosp_total, costo_alim_total Como Real
		Definir total, descuento, total_final, costo_por_estudiante Como Real
		Definir precio_transporte, precio_alim Como Real
		Definir recomendacion Como Cadena
		
		Escribir "Numero de estudiantes:"
		Leer estudiantes
		
		Escribir "Tipo transporte (1=Bus, 2=Avion):"
		Leer tipo_transporte
		
		Escribir "Numero de dias:"
		Leer dias
		
		Escribir "Costo hospedaje por dia:"
		Leer costo_hospedaje
		
		Escribir "Incluye alimentacion? (1=Si,0=No):"
		Leer alimentacion
		
		Escribir "Aplica descuento institucional? (1=Si,0=No):"
		Leer descuento_inst
		
		// Transporte
		Si tipo_transporte = 1 Entonces
			precio_transporte <- 10
		Sino
			precio_transporte <- 50
		FinSi
		
		Si estudiantes > 20 Entonces
			precio_transporte <- precio_transporte * 0.8
		FinSi
		
		// Coordinador no paga transporte
		costo_transporte <- (estudiantes - 1) * precio_transporte
		
		// Hospedaje
		costo_hosp_total <- estudiantes * dias * costo_hospedaje
		
		Si dias > 3 Entonces
			costo_hosp_total <- costo_hosp_total * 0.9
		FinSi
		
		// Alimentación
		costo_alim_total <- 0
		Si alimentacion = 1 Entonces
			precio_alim <- 8
			costo_alim_total <- estudiantes * dias * precio_alim
		FinSi
		
		// Total inicial
		total <- costo_transporte + costo_hosp_total + costo_alim_total
		
		// Descuento institucional
		descuento <- 0
		Si descuento_inst = 1 Y total > 500 Entonces
			descuento <- total * 0.1
		FinSi
		
		total_final <- total - descuento
		
		// Costo por estudiante
		costo_por_estudiante <- total_final / estudiantes
		
		// Recomendación
		Si costo_por_estudiante > 100 Entonces
			recomendacion <- "Viaje no recomendable"
		Sino
			recomendacion <- "Viaje recomendable"
		FinSi
		
		// Salidas
		Escribir "Costo transporte: ", costo_transporte
		Escribir "Costo hospedaje: ", costo_hosp_total
		Escribir "Costo alimentacion: ", costo_alim_total
		Escribir "Descuento: ", descuento
		Escribir "Total general: ", total_final
		Escribir "Costo por estudiante: ", costo_por_estudiante
		Escribir "Recomendacion: ", recomendacion
FinAlgoritmo
