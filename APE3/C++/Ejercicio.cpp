#include <iostream>
using namespace std;

int main() {
    int N;
    char repetir;

    do {
        do {
            cout << "Ingrese numero de estudiantes: ";
            cin >> N;
        } while (N <= 0);

        int totalA=0, totalB=0, totalC=0;
        int repNota=0, repAsis=0, aprobados=0;
        int estables=0, inestables=0;

        float sumaProm=0;
        float mayor=-1, menor=11;
        string mejorNombre, peorNombre;

        for(int i=0; i<N; i++) {
            string nombre;
            char paralelo;
            float n1, n2, np, asistencia, promedio;

            cout << "\nNombre: ";
            cin >> nombre;

            do {
                cout << "Paralelo (A/B/C): ";
                cin >> paralelo;
            } while(paralelo!='A' && paralelo!='B' && paralelo!='C');

            do {
                cout << "Nota 1: ";
                cin >> n1;
            } while(n1<0 || n1>10);

            do {
                cout << "Nota 2: ";
                cin >> n2;
            } while(n2<0 || n2>10);

            do {
                cout << "Practicas: ";
                cin >> np;
            } while(np<0 || np>10);

            do {
                cout << "Asistencia: ";
                cin >> asistencia;
            } while(asistencia<0 || asistencia>100);

            promedio = n1*0.3 + n2*0.3 + np*0.4;

            string categoria;
            if(promedio >= 9) categoria="Excelente";
            else if(promedio >= 8) categoria="Muy bueno";
            else if(promedio >= 7) categoria="Bueno";
            else if(promedio >= 6) categoria="En riesgo";
            else categoria="Reprobado";

            // Estado final
            if(asistencia < 70) {
                repAsis++;
            } else {
                if(promedio < 6) repNota++;
                else aprobados++;
            }

            // Estabilidad
            if(n1==n2 && n2==np) estables++;

            float max = n1, min = n1;
            if(n2>max) max=n2;
            if(np>max) max=np;
            if(n2<min) min=n2;
            if(np<min) min=np;

            if((max-min) > 4) inestables++;

            // Mayor y menor
            if(promedio > mayor) {
                mayor = promedio;
                mejorNombre = nombre;
            }

            if(promedio < menor) {
                menor = promedio;
                peorNombre = nombre;
            }

            // Paralelos
            if(paralelo=='A') totalA++;
            else if(paralelo=='B') totalB++;
            else totalC++;

            sumaProm += promedio;
        }

        cout << "\n===== REPORTE =====\n";
        cout << "Total estudiantes: " << N << endl;
        cout << "Paralelo A: " << totalA << endl;
        cout << "Paralelo B: " << totalB << endl;
        cout << "Paralelo C: " << totalC << endl;

        cout << "Reprobados por nota: " << repNota << endl;
        cout << "Reprobados por asistencia: " << repAsis << endl;

        cout << "Promedio general: " << sumaProm/N << endl;

        cout << "Mejor estudiante: " << mejorNombre << " (" << mayor << ")" << endl;
        cout << "Peor estudiante: " << peorNombre << " (" << menor << ")" << endl;

        cout << "Porcentaje aprobados: " << (aprobados*100.0/N) << "%" << endl;
        cout << "Estables: " << (estables*100.0/N) << "%" << endl;
        cout << "Inestables: " << (inestables*100.0/N) << "%" << endl;

        cout << "\nDesea repetir? (s/n): ";
        cin >> repetir;

    } while(repetir=='s' || repetir=='S');

    return 0;
}
