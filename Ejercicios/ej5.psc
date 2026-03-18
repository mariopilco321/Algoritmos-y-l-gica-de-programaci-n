Algoritmo ejercicio5
		// Definición de variables
		Definir monto, saldo_usuario Como Entero
		Definir b20, b10, b5, b1 Como Entero
		Definir e20, e10, e5, e1 Como Entero
		Definir restante, efectivo_total, efectivo_restante Como Entero
		
		// Entrada de datos
		Escribir "Saldo del usuario:"
		Leer saldo_usuario
		
		Escribir "Monto a retirar:"
		Leer monto
		
		Escribir "Billetes de 20 disponibles:"
		Leer b20
		
		Escribir "Billetes de 10 disponibles:"
		Leer b10
		
		Escribir "Billetes de 5 disponibles:"
		Leer b5
		
		Escribir "Billetes de 1 disponibles:"
		Leer b1
		
		// Validación de monto
		Si monto <= 0 Entonces
			Escribir "Error: monto invalido"
		Sino
			
			// Calcular efectivo total del cajero
			efectivo_total <- b20*20 + b10*10 + b5*5 + b1
			
			// Validar saldo del usuario
			Si monto > saldo_usuario Entonces
				Escribir "Error: saldo insuficiente"
			Sino
				
				// Validar dinero en cajero
				Si monto > efectivo_total Entonces
					Escribir "Error: cajero sin fondos suficientes"
				Sino
					
					restante <- monto
					
					// Billetes de 20
					Si trunc(restante/20) < b20 Entonces
						e20 <- trunc(restante/20)
					Sino
						e20 <- b20
					FinSi
					restante <- restante - e20*20
					
					// Billetes de 10
					Si trunc(restante/10) < b10 Entonces
						e10 <- trunc(restante/10)
					Sino
						e10 <- b10
					FinSi
					restante <- restante - e10*10
					
					// Billetes de 5
					Si trunc(restante/5) < b5 Entonces
						e5 <- trunc(restante/5)
					Sino
						e5 <- b5
					FinSi
					restante <- restante - e5*5
					
					// Billetes de 1
					Si restante < b1 Entonces
						e1 <- restante
					Sino
						e1 <- b1
					FinSi
					restante <- restante - e1
					
					// Verificación final
					Si restante = 0 Entonces
						
						saldo_usuario <- saldo_usuario - monto
						
						b20 <- b20 - e20
						b10 <- b10 - e10
						b5 <- b5 - e5
						b1 <- b1 - e1
						
						efectivo_restante <- b20*20 + b10*10 + b5*5 + b1
						
						Escribir "=== ENTREGA EXITOSA ==="
						Escribir "Billetes de 20: ", e20
						Escribir "Billetes de 10: ", e10
						Escribir "Billetes de 5: ", e5
						Escribir "Billetes de 1: ", e1
						
						Escribir "Saldo restante del usuario: ", saldo_usuario
						Escribir "Efectivo restante del cajero: ", efectivo_restante
						
					Sino
						Escribir "Error: no se puede entregar monto exacto"
					FinSi
					
				FinSi
			FinSi
		FinSi
FinAlgoritmo
