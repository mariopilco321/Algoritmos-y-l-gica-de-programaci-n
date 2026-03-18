#include <iostream>
using namespace std;

int main() {

    float lectura_anterior, lectura_actual, consumo;
    float costo_base, subsidio = 0, recargo = 0, total_final;
    int tipo_vivienda, habitantes, alto_consumo, deuda;
    string alerta = "Consumo normal";

    cout << "Lectura anterior: ";
    cin >> lectura_anterior;

    cout << "Lectura actual: ";
    cin >> lectura_actual;

    if (lectura_actual < lectura_anterior) {
        cout << "Error: lectura invalida" << endl;
        return 0;
    }

    consumo = lectura_actual - lectura_anterior;

    cout << "Tipo vivienda (1=Normal, 2=Social): ";
    cin >> tipo_vivienda;

    cout << "Numero de habitantes: ";
    cin >> habitantes;

    cout << "Tiene alto consumo? (1=Si,0=No): ";
    cin >> alto_consumo;

    cout << "Tiene deuda? (1=Si,0=No): ";
    cin >> deuda;

    if (consumo <= 100)
        costo_base = consumo * 0.10;
    else if (consumo <= 300)
        costo_base = consumo * 0.15;
    else
        costo_base = consumo * 0.20;

    if (deuda == 1)
        recargo = costo_base * 0.10;

    if (tipo_vivienda == 2 && consumo < 150)
        subsidio = costo_base * 0.20;

    total_final = costo_base + recargo - subsidio;

    if ((consumo / habitantes) > 100)
        alerta = "Consumo excesivo";

    if (alto_consumo == 1 && consumo > 300)
        alerta = "Riesgo de sobrefacturacion";

    cout << "\nConsumo total: " << consumo << endl;
    cout << "Costo base: " << costo_base << endl;
    cout << "Subsidio: " << subsidio << endl;
    cout << "Recargo: " << recargo << endl;
    cout << "Total final: " << total_final << endl;
    cout << "Alerta: " << alerta << endl;

    return 0;
}
