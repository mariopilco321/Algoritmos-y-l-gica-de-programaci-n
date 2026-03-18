Algoritmo sin_titulo
		
		Definir lectura_anterior, lectura_actual Como Real
		Definir consumo, costo_base Como Real
		Definir tipo_vivienda, habitantes Como Entero
		Definir alto_consumo, deuda Como Entero
		Definir subsidio, recargo, total_final Como Real
		Definir alerta Como Cadena
		
		Escribir "Lectura anterior:"
		Leer lectura_anterior
		
		Escribir "Lectura actual:"
		Leer lectura_actual
		
		Si lectura_actual < lectura_anterior Entonces
			Escribir "Error: lectura invalida"
		FinSi

		consumo <- lectura_actual - lectura_anterior

		Escribir "Tipo vivienda (1=Normal, 2=Social):"
		Leer tipo_vivienda

		Escribir "Numero de habitantes:"
		Leer habitantes

		Escribir "Tiene artefactos alto consumo (1=Si,0=No):"
		Leer alto_consumo

		Escribir "Tiene deuda (1=Si,0=No):"
		Leer deuda

		// Costo base por tramos
		Si consumo <= 100 Entonces
			costo_base <- consumo * 0.10
		Sino
			Si consumo <= 300 Entonces
				costo_base <- consumo * 0.15
			Sino
				costo_base <- consumo * 0.20
			FinSi
		FinSi

		subsidio <- 0
		recargo <- 0

		// Recargo por deuda
		Si deuda = 1 Entonces
			recargo <- costo_base * 0.10
		FinSi
		// Subsidio vivienda social
		Si tipo_vivienda = 2 Y consumo < 150 Entonces
			subsidio <- costo_base * 0.20
		FinSi
		total_final <- costo_base + recargo - subsidio
		// Alertas
		alerta <- "Consumo normal"
		Si (consumo / habitantes) > 100 Entonces
			alerta <- "Consumo excesivo por habitante"
		FinSi
		Si alto_consumo = 1 Y consumo > 300 Entonces
			alerta <- "Riesgo de sobrefacturacion"
		FinSi
		// Salidas
		Escribir "Consumo total: ", consumo
		Escribir "Costo base: ", costo_base
		Escribir "Subsidio: ", subsidio
		Escribir "Recargo: ", recargo
		Escribir "Total final: ", total_final
		Escribir "Alerta: ", alerta
FinAlgoritmo
