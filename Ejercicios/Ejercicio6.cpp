#include <iostream>
using namespace std;

int main() {
    int estudiantes, tipo_transporte, dias, alimentacion, descuento_inst;
    float costo_hospedaje;

    float costo_transporte, costo_hosp_total, costo_alim_total;
    float total, descuento = 0, total_final, costo_por_estudiante;
    float precio_transporte, precio_alim;

    cout << "Numero de estudiantes: ";
    cin >> estudiantes;

    cout << "Tipo transporte (1=Bus, 2=Avion): ";
    cin >> tipo_transporte;

    cout << "Numero de dias: ";
    cin >> dias;

    cout << "Costo hospedaje por dia: ";
    cin >> costo_hospedaje;

    cout << "Incluye alimentacion? (1=Si,0=No): ";
    cin >> alimentacion;

    cout << "Aplica descuento institucional? (1=Si,0=No): ";
    cin >> descuento_inst;

    if (tipo_transporte == 1)
        precio_transporte = 10;
    else
        precio_transporte = 50;

    if (estudiantes > 20)
        precio_transporte *= 0.8;

    costo_transporte = (estudiantes - 1) * precio_transporte;

    costo_hosp_total = estudiantes * dias * costo_hospedaje;

    if (dias > 3)
        costo_hosp_total *= 0.9;

    costo_alim_total = 0;
    if (alimentacion == 1) {
        precio_alim = 8;
        costo_alim_total = estudiantes * dias * precio_alim;
    }

    total = costo_transporte + costo_hosp_total + costo_alim_total;

    if (descuento_inst == 1 && total > 500)
        descuento = total * 0.1;

    total_final = total - descuento;

    costo_por_estudiante = total_final / estudiantes;

    if (costo_por_estudiante > 100)
        cout << "Viaje no recomendable\n";
    else
        cout << "Viaje recomendable\n";

    cout << "Costo transporte: " << costo_transporte << endl;
    cout << "Costo hospedaje: " << costo_hosp_total << endl;
    cout << "Costo alimentacion: " << costo_alim_total << endl;
    cout << "Descuento: " << descuento << endl;
    cout << "Total general: " << total_final << endl;
    cout << "Costo por estudiante: " << costo_por_estudiante << endl;

    return 0;
}
