#include <iostream>
#include <algorithm> // para usar min()
using namespace std;

int main() {
    int monto;
    int saldo_usuario;
    int b20, b10, b5, b1;
    int e20 = 0, e10 = 0, e5 = 0, e1 = 0;
    int restante, efectivo_total, efectivo_restante;

    // Entrada de datos
    cout << "Saldo del usuario: ";
    cin >> saldo_usuario;

    cout << "Monto a retirar: ";
    cin >> monto;

    cout << "Billetes de 20 disponibles: ";
    cin >> b20;

    cout << "Billetes de 10 disponibles: ";
    cin >> b10;

    cout << "Billetes de 5 disponibles: ";
    cin >> b5;

    cout << "Billetes de 1 disponibles: ";
    cin >> b1;

    // Validación de monto
    if (monto <= 0) {
        cout << "Error: monto invalido" << endl;
        return 0;
    }

    // Calcular efectivo total del cajero
    efectivo_total = b20*20 + b10*10 + b5*5 + b1;

    // Validar saldo del usuario
    if (monto > saldo_usuario) {
        cout << "Error: saldo insuficiente" << endl;
        return 0;
    }

    // Validar dinero en cajero
    if (monto > efectivo_total) {
        cout << "Error: cajero sin fondos suficientes" << endl;
        return 0;
    }

    restante = monto;

    // Billetes de 20
    e20 = min(restante / 20, b20);
    restante -= e20 * 20;

    // Billetes de 10
    e10 = min(restante / 10, b10);
    restante -= e10 * 10;

    // Billetes de 5
    e5 = min(restante / 5, b5);
    restante -= e5 * 5;

    // Billetes de 1
    e1 = min(restante, b1);
    restante -= e1;

    // Verificación final
    if (restante == 0) {

        saldo_usuario -= monto;

        b20 -= e20;
        b10 -= e10;
        b5 -= e5;
        b1 -= e1;

        efectivo_restante = b20*20 + b10*10 + b5*5 + b1;

        cout << "\n=== ENTREGA EXITOSA ===" << endl;
        cout << "Billetes de 20: " << e20 << endl;
        cout << "Billetes de 10: " << e10 << endl;
        cout << "Billetes de 5: " << e5 << endl;
        cout << "Billetes de 1: " << e1 << endl;

        cout << "Saldo restante del usuario: " << saldo_usuario << endl;
        cout << "Efectivo restante del cajero: " << efectivo_restante << endl;

    } else {
        cout << "Error: no se puede entregar monto exacto" << endl;
    }

    return 0;
}
