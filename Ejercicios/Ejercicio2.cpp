#include <iostream>
using namespace std;

int main() {
    float promedio, asistencia;
    int materias, ingresos, proyectos;
    string tipo, razon_academica, razon_economica, observacion;

    cout << "Promedio: ";
    cin >> promedio;

    cout << "Materias perdidas: ";
    cin >> materias;

    cout << "Asistencia (%): ";
    cin >> asistencia;

    cout << "Ingresos bajos? (1=No,0=Si): ";
    cin >> ingresos;

    cout << "Participa en proyectos? (1=Si,0=No): ";
    cin >> proyectos;

    if (asistencia < 80) {
        tipo = "Sin beneficio";
        razon_academica = "Asistencia insuficiente";
        razon_economica = "No aplica";
        observacion = "Pierde cualquier beca";
    }
    else if (promedio < 7) {
        tipo = "Sin beneficio";
        razon_academica = "Promedio bajo";
    }
    else if (promedio >= 9 && asistencia >= 90 && materias == 0) {
        tipo = "Beca completa";
        razon_academica = "Alto rendimiento";
    }
    else if (promedio >= 8 && asistencia >= 85) {
        tipo = "Beca parcial";
        razon_academica = "Buen rendimiento";
    }
    else {
        tipo = "Ayuda materiales";
    }

    if (proyectos == 1 && ingresos == 0) {
        if (tipo == "Ayuda materiales")
            tipo = "Beca parcial";
        else if (tipo == "Beca parcial" && materias <= 1)
            tipo = "Beca completa";
    }

    cout << "\nTipo: " << tipo << endl;

    return 0;
}
