#include <iostream>   // Librería para entrada y salida de datos
#include <fstream>    // Librería para manejo de archivos
#include <string>     // Librería para utilizar cadenas de texto

using namespace std;

int main() {

    // Variable para manejar el archivo
    ofstream archivo;

    // Variable para guardar la opción del menú
    int opcion;

    // Ciclo principal del programa
    do {

        // Mostrar menú
        cout << "\n===== MENU =====" << endl;
        cout << "1. Registrar estudiante" << endl;
        cout << "2. Salir" << endl;
        cout << "Seleccione una opcion: ";
        cin >> opcion;

        // Opción para registrar estudiante
        if(opcion == 1) {

            // Variables para almacenar datos del estudiante
            string nombre, carrera;
            int edad;
            float promedio;

            // Limpia el buffer del teclado
            cin.ignore();

            // Solicita el nombre del estudiante
            cout << "\nIngrese el nombre del estudiante: ";
            getline(cin, nombre);

            // Validación de la edad
            do {

                cout << "Ingrese la edad: ";
                cin >> edad;

                // Verifica que la edad sea válida
                if(edad <= 0) {
                    cout << "Error: Edad invalida." << endl;
                }

            } while(edad <= 0);

            // Limpia nuevamente el buffer
            cin.ignore();

            // Solicita la carrera
            cout << "Ingrese la carrera: ";
            getline(cin, carrera);

            // Validación del promedio
            do {

                cout << "Ingrese el promedio: ";
                cin >> promedio;

                // Verifica que el promedio esté entre 0 y 10
                if(promedio < 0 || promedio > 10) {
                    cout << "Error: Promedio invalido." << endl;
                }

            } while(promedio < 0 || promedio > 10);

            // Abrir archivo en modo agregar
            archivo.open("estudiantes.txt", ios::app);

            // Verifica si el archivo se abrió correctamente
            if(archivo.is_open()) {

                // Guardar información en el archivo
                archivo << "Nombre: " << nombre << endl;
                archivo << "Edad: " << edad << endl;
                archivo << "Carrera: " << carrera << endl;
                archivo << "Promedio: " << promedio << endl;
                archivo << "------------------------" << endl;

                // Cerrar archivo
                archivo.close();

                // Mensaje de confirmación
                cout << "\nDatos guardados correctamente." << endl;

            } else {

                // Mensaje de error si no se abre el archivo
                cout << "Error al abrir el archivo." << endl;
            }

        }

        // Opción para salir
        else if(opcion == 2) {

            cout << "\nSaliendo del programa..." << endl;
        }

        // Si el usuario ingresa una opción incorrecta
        else {

            cout << "\nOpcion invalida." << endl;
        }

    } while(opcion != 2); // Repetir hasta seleccionar salir

    return 0; // Fin del programa
}
