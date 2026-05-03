#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ifstream archivo("productos.txt");

    string nombre, productoMayor;
    double precio, subtotal, total = 0, mayor = 0;
    int cantidad;

    if (!archivo.is_open()) {
        cout << "Error al abrir archivo" << endl;
        return 1;
    }

    while (archivo >> nombre >> precio >> cantidad) {
        subtotal = precio * cantidad;

        cout << nombre << " Subtotal: " << subtotal << endl;

        total += subtotal;

        if (subtotal > mayor) {
            mayor = subtotal;
            productoMayor = nombre;
        }
    }

    cout << "Total general: " << total << endl;
    cout << "Producto mayor: " << productoMayor << endl;

    archivo.close();
    return 0;
}
