Algoritmo Registro_estudiantes

		Definir opcion Como Entero
		Definir nombre, carrera Como Cadena
		Definir edad Como Entero
		Definir promedio Como Real
		
		Repetir
			
			Escribir "===== MENU ====="
			Escribir "1. Registrar estudiante"
			Escribir "2. Salir"
			Escribir "Seleccione una opcion: "
			Leer opcion
			
			Si opcion = 1 Entonces
				
				Escribir "Ingrese el nombre del estudiante:"
				Leer nombre
				
				Repetir
					Escribir "Ingrese la edad:"
					Leer edad
					
					Si edad <= 0 Entonces
						Escribir "Error: Edad invalida"
					FinSi
					
				Hasta Que edad > 0
				
				Escribir "Ingrese la carrera:"
				Leer carrera
				
				Repetir
					Escribir "Ingrese el promedio:"
					Leer promedio
					
					Si promedio < 0 O promedio > 10 Entonces
						Escribir "Error: Promedio invalido"
					FinSi
					
				Hasta Que promedio >= 0 Y promedio <= 10
				
				Escribir "Datos guardados correctamente"
				
			Sino
				
				Si opcion = 2 Entonces
					Escribir "Saliendo del programa..."
				Sino
					Escribir "Opcion invalida"
				FinSi
				
			FinSi
			
		Hasta Que opcion = 2
FinAlgoritmo
