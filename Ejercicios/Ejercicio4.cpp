#include <iostream>
using namespace std;

int main() {
    int hojas, tipo_impresion, tipo_cliente, horario, anillado;
    float precio, subtotal, descuento = 0, recargo = 0, total, valor_anillado = 0;

    cout << "Numero de hojas: ";
    cin >> hojas;

    cout << "Tipo impresion (1=BN,2=Color): ";
    cin >> tipo_impresion;

    cout << "Tipo cliente (1=Estudiante,2=Docente): ";
    cin >> tipo_cliente;

    cout << "Horario (1=Normal,2=Nocturno): ";
    cin >> horario;

    cout << "Anillado (1=Si,0=No): ";
    cin >> anillado;

    if (hojas <= 20)
        precio = 0.05;
    else if (hojas <= 100)
        precio = 0.04;
    else
        precio = 0.03;

    if (tipo_impresion == 2)
        precio += 0.02;

    subtotal = hojas * precio;

    if (tipo_cliente == 2)
        descuento = subtotal * 0.05;

    if (tipo_cliente == 1 && hojas > 50) {
        float desc_est = subtotal * 0.08;
        if (desc_est > descuento)
            descuento = desc_est;
    }

    if (horario == 2)
        recargo = subtotal * 0.10;

    if (anillado == 1) {
        valor_anillado = 2.0;
        if (hojas > 100)
            valor_anillado *= 0.8;
    }

    total = subtotal - descuento + recargo + valor_anillado;

    cout << "\nSubtotal impresion: " << subtotal << endl;
    cout << "Descuento aplicado: " << descuento << endl;
    cout << "Recargo: " << recargo << endl;
    cout << "Valor anillado: " << valor_anillado << endl;
    cout << "Total a pagar: " << total << endl;

    return 0;
}
