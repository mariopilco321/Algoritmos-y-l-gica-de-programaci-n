package Ejercicio2;

import java.io.File;
import java.util.Scanner;

public class ProductosArchivo {
    public static void main(String[] args) throws Exception {
        File archivo = new File("productos.txt");
        Scanner sc = new Scanner(archivo);

        double total = 0, mayor = 0;
        String productoMayor = "";

        while (sc.hasNext()) {
            String nombre = sc.next();
            double precio = sc.nextDouble();
            int cantidad = sc.nextInt();

            double subtotal = precio * cantidad;

            System.out.println(nombre + " Subtotal: " + subtotal);

            total += subtotal;

            if (subtotal > mayor) {
                mayor = subtotal;
                productoMayor = nombre;
            }
        }

        System.out.println("Total general: " + total);
        System.out.println("Producto mayor: " + productoMayor);

        sc.close();
    }
}
