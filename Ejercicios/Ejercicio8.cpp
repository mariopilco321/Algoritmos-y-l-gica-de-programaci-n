#include <iostream>
using namespace std;

int main() {

    float nota1, nota2, nota3, asistencia, promedio;
    int proyecto, plagio;
    string estado = "", obs_disciplinaria = "Sin problemas", obs_rendimiento = "Normal";

    cout << "Nota 1: ";
    cin >> nota1;

    cout << "Nota 2: ";
    cin >> nota2;

    cout << "Nota 3: ";
    cin >> nota3;

    cout << "Asistencia (%): ";
    cin >> asistencia;

    cout << "Entrego proyecto? (1=Si,0=No): ";
    cin >> proyecto;

    cout << "Cometio plagio? (1=Si,0=No): ";
    cin >> plagio;

    promedio = (nota1 + nota2 + nota3) / 3;

    if (plagio == 1) {
        estado = "Reprobado";
        obs_disciplinaria = "Sancion por plagio";
    } else {

        if (asistencia < 70) {
            estado = "Reprobado";
        } else {

            if (proyecto == 0) {
                estado = "Recuperacion";
            } else {

                if (promedio >= 7) {
                    estado = "Aprobado";
                } else if (promedio >= 5) {
                    estado = "Recuperacion";
                } else {
                    estado = "Reprobado";
                }

            }
        }
    }

    // Rendimiento irregular
    if ((nota1 == 10 || nota2 == 10 || nota3 == 10) &&
        ((nota1 < 4 && nota2 < 4) ||
         (nota1 < 4 && nota3 < 4) ||
         (nota2 < 4 && nota3 < 4))) {

        obs_rendimiento = "Rendimiento irregular";
    }

    // Felicitacion
    if (nota1 >= 9 && nota2 >= 9 && nota3 >= 9 && asistencia >= 95) {
        estado = "Aprobado con felicitacion";
        obs_rendimiento = "Excelente rendimiento";
    }

    cout << "\nPromedio: " << promedio << endl;
    cout << "Estado: " << estado << endl;
    cout << "Observacion disciplinaria: " << obs_disciplinaria << endl;
    cout << "Observacion de rendimiento: " << obs_rendimiento << endl;

    return 0;
}
