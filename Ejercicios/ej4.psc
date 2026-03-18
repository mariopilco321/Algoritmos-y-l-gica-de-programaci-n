Algoritmo ejercicio4
		Definir hojas, tipo_impresion, tipo_cliente, horario, anillado Como Entero
		Definir precio, subtotal, descuento, recargo, total, valor_anillado Como Real
		
		Escribir "Numero de hojas:"
		Leer hojas
		Escribir "Tipo impresion (1=BN,2=Color):"
		Leer tipo_impresion
		Escribir "Tipo cliente (1=Estudiante,2=Docente):"
		Leer tipo_cliente
		Escribir "Horario (1=Normal,2=Nocturno):"
		Leer horario
		Escribir "Anillado (1=Si,0=No):"
		Leer anillado
		
		Si hojas <= 20 Entonces
			precio <- 0.05
		Sino
			Si hojas <= 100 Entonces
				precio <- 0.04
			Sino
				precio <- 0.03
			FinSi
		FinSi
		
		Si tipo_impresion = 2 Entonces
			precio <- precio + 0.02
		FinSi
		
		subtotal <- hojas * precio
		
		descuento <- 0
		
		Si tipo_cliente = 2 Entonces
			descuento <- subtotal * 0.05
		FinSi
		
		Si tipo_cliente = 1 Y hojas > 50 Entonces
			Si subtotal * 0.08 > descuento Entonces
				descuento <- subtotal * 0.08
			FinSi
		FinSi
		
		recargo <- 0
		Si horario = 2 Entonces
			recargo <- subtotal * 0.10
		FinSi
		
		valor_anillado <- 0
		Si anillado = 1 Entonces
			valor_anillado <- 2.00
			Si hojas > 100 Entonces
				valor_anillado <- valor_anillado * 0.8
			FinSi
		FinSi
		
		total <- subtotal - descuento + recargo + valor_anillado
		
		Escribir "Subtotal:", subtotal
		Escribir "Descuento:", descuento
		Escribir "Recargo:", recargo
		Escribir "Anillado:", valor_anillado
		Escribir "Total:", total
FinAlgoritmo
