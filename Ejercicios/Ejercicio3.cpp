#include <iostream>
using namespace std;

int main() {
    float lado1, lado2, lado3, altura, angulo, area;
    string tipoLados, tipoAngulo, validez, mensaje;

    cout << "Ingrese lado 1: ";
    cin >> lado1;
    cout << "Ingrese lado 2: ";
    cin >> lado2;
    cout << "Ingrese lado 3: ";
    cin >> lado3;
    cout << "Ingrese altura: ";
    cin >> altura;
    cout << "Ingrese angulo principal: ";
    cin >> angulo;

    if ((lado1 + lado2 > lado3) && (lado1 + lado3 > lado2) && (lado2 + lado3 > lado1)) {
        validez = "Triangulo valido";

        if (lado1 == lado2 && lado2 == lado3)
            tipoLados = "Equilatero";
        else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3)
            tipoLados = "Isosceles";
        else
            tipoLados = "Escaleno";

        if (angulo < 90)
            tipoAngulo = "Acutangulo";
        else if (angulo == 90)
            tipoAngulo = "Rectangulo";
        else
            tipoAngulo = "Obtusangulo";

        area = (lado1 * altura) / 2;

        if (altura > lado1 || altura > lado2 || altura > lado3)
            mensaje = "Advertencia: altura inconsistente";
        else
            mensaje = "Altura consistente";

        cout << "\nValidez: " << validez << endl;
        cout << "Tipo por lados: " << tipoLados << endl;
        cout << "Tipo por angulo: " << tipoAngulo << endl;
        cout << "Area: " << area << endl;
        cout << "Mensaje: " << mensaje << endl;

    } else {
        cout << "\nNo forma un triangulo" << endl;
    }

    return 0;
}
