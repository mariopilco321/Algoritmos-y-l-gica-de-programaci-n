package Ejercicio1;

import java.io.File;
import java.util.Scanner;

public class SistemaNotas {
    public static void main(String[] args) throws Exception {
        File archivo = new File("estudiantes.txt");
        Scanner sc = new Scanner(archivo);

        int total = 0, aprobados = 0;
        double suma = 0;

        while (sc.hasNext()) {
            String nombre = sc.next();
            double n1 = sc.nextDouble();
            double n2 = sc.nextDouble();
            double n3 = sc.nextDouble();

            double promedio = (n1 + n2 + n3) / 3.0;

            System.out.println("Nombre: " + nombre);
            System.out.println("Promedio: " + promedio);

            if (promedio >= 9)
                System.out.println("Estado: Excelente");
            else if (promedio >= 7)
                System.out.println("Estado: Bueno");
            else
                System.out.println("Estado: Reprobado");

            System.out.println("------------------");

            if (promedio >= 7) aprobados++;
            suma += promedio;
            total++;
        }

        System.out.println("Total estudiantes: " + total);
        System.out.println("Aprobados: " + aprobados);
        System.out.println("Promedio general: " + (suma / total));

        sc.close();
    }
}
