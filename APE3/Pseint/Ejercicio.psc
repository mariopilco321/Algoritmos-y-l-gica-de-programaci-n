Algoritmo Rendimientoa_academico
		Definir N, i Como Entero
		Definir nombre, categoria, estado Como Cadena
		Definir paralelo Como Caracter
		Definir n1, n2, np, asistencia, promedio Como Real
		Definir sumaProm, mayor, menor Como Real
		Definir totalA, totalB, totalC Como Entero
		Definir repNota, repAsis, aprobados Como Entero
		Definir estables, inestables Como Entero
		Definir mejorNombre, peorNombre Como Cadena
		Definir opcion Como Caracter
		Definir max, min Como Real
		
		Repetir
			
			// VALIDAR N
			Repetir
				Escribir "Ingrese numero de estudiantes:"
				Leer N
			Hasta Que N > 0
			
			// INICIALIZAR
			totalA <- 0
			totalB <- 0
			totalC <- 0
			
			repNota <- 0
			repAsis <- 0
			aprobados <- 0
			
			estables <- 0
			inestables <- 0
			
			sumaProm <- 0
			mayor <- -1
			menor <- 11
			
			Para i <- 1 Hasta N Hacer
				
				Escribir "Ingrese nombre:"
				Leer nombre
				
				// VALIDAR PARALELO
				Repetir
					Escribir "Ingrese paralelo (A/B/C):"
					Leer paralelo
				Hasta Que paralelo = "A" O paralelo = "B" O paralelo = "C"
				
				// CONTAR PARALELO
				Si paralelo = "A" Entonces
					totalA <- totalA + 1
				SiNo
					Si paralelo = "B" Entonces
						totalB <- totalB + 1
					SiNo
						totalC <- totalC + 1
					FinSi
				FinSi
				
				// VALIDAR NOTAS
				Repetir
					Escribir "Nota 1:"
					Leer n1
				Hasta Que n1 >= 0 Y n1 <= 10
				
				Repetir
					Escribir "Nota 2:"
					Leer n2
				Hasta Que n2 >= 0 Y n2 <= 10
				
				Repetir
					Escribir "Nota practicas:"
					Leer np
				Hasta Que np >= 0 Y np <= 10
				
				// VALIDAR ASISTENCIA
				Repetir
					Escribir "Asistencia:"
					Leer asistencia
				Hasta Que asistencia >= 0 Y asistencia <= 100
				
				// CALCULAR PROMEDIO
				promedio <- n1 * 0.3 + n2 * 0.3 + np * 0.4
				
				// CLASIFICACION
				Si promedio >= 9 Entonces
					categoria <- "Excelente"
				SiNo
					Si promedio >= 8 Entonces
						categoria <- "Muy bueno"
					SiNo
						Si promedio >= 7 Entonces
							categoria <- "Bueno"
						SiNo
							Si promedio >= 6 Entonces
								categoria <- "En riesgo"
							SiNo
								categoria <- "Reprobado"
							FinSi
						FinSi
					FinSi
				FinSi
				
				// ESTADO FINAL
				Si asistencia < 70 Entonces
					estado <- "Reprobado por asistencia"
					repAsis <- repAsis + 1
				SiNo
					estado <- categoria
					
					Si promedio < 6 Entonces
						repNota <- repNota + 1
					SiNo
						aprobados <- aprobados + 1
					FinSi
				FinSi
				
				// ALERTA
				Si promedio >= 9 Y asistencia < 80 Entonces
					Escribir "ALERTA: Alto promedio con baja asistencia"
				FinSi
				
				// ESTABILIDAD
				Si n1 = n2 Y n2 = np Entonces
					estables <- estables + 1
				FinSi
				
				// INESTABILIDAD
				max <- n1
				min <- n1
				
				Si n2 > max Entonces
					max <- n2
				FinSi
				
				Si np > max Entonces
					max <- np
				FinSi
				
				Si n2 < min Entonces
					min <- n2
				FinSi
				
				Si np < min Entonces
					min <- np
				FinSi
				
				Si (max - min) > 4 Entonces
					inestables <- inestables + 1
				FinSi
				
				// MAYOR Y MENOR
				Si promedio > mayor Entonces
					mayor <- promedio
					mejorNombre <- nombre
				FinSi
				
				Si promedio < menor Entonces
					menor <- promedio
					peorNombre <- nombre
				FinSi
				
				sumaProm <- sumaProm + promedio
				
			FinPara
			
			// REPORTE
			Escribir "===== REPORTE ====="
			Escribir "Total estudiantes: ", N
			Escribir "Paralelo A: ", totalA
			Escribir "Paralelo B: ", totalB
			Escribir "Paralelo C: ", totalC
			
			Escribir "Reprobados por nota: ", repNota
			Escribir "Reprobados por asistencia: ", repAsis
			
			Escribir "Promedio general: ", sumaProm / N
			
			Escribir "Mejor estudiante: ", mejorNombre, " Promedio: ", mayor
			Escribir "Peor estudiante: ", peorNombre, " Promedio: ", menor
			
			Escribir "Porcentaje aprobados: ", (aprobados * 100) / N, "%"
			Escribir "Porcentaje estables: ", (estables * 100) / N, "%"
			Escribir "Porcentaje inestables: ", (inestables * 100) / N, "%"
			
			// REPETIR
			Escribir "Desea repetir el proceso? (S/N):"
			Leer opcion
			
		Hasta Que opcion = "N" O opcion = "n"
FinAlgoritmo
