#include<iostream>
using namespace std;

int main()
{
    //Variables
    int credencial, curso, retraso, faltas, prioridad;
    string estado, motivo;
    //Ingreso de datos
    cout << "Tiene credencial? (1=Si,0=No): ";
    cin >> credencial;

    cout << "Pertenece al curso? (1=Si,0=No): ";
    cin >> curso;

    cout << "Minutos de retraso: ";
    cin >> retraso;

    cout << "Numero de faltas: ";
    cin >> faltas;

    //Proceso

    if(credencial == 0){
        estado = "No ingresa";
        motivo = "No porta credencial";
        prioridad = 1;
    }
    else if(curso == 0){
        estado = "No ingresa";
        motivo = "No pertenece al curso";
        prioridad = 1;
    }
    else if(faltas >= 5){
        estado = "No ingresa";
        motivo = "Muchas faltas acumuladas";
        prioridad = 1;
    }
    else if(retraso > 10){
        estado = "No ingresa";
        motivo = "Atrasado";
        prioridad = 2;
    }
    else if(faltas >= 3){
        estado = "Ingresa con advertencia";
        motivo = "Faltas acumuladas";
        prioridad = 3;
    }
    else if(retraso > 0){
        estado = "Ingresa con advertencia";
        motivo = "Llega tarde";
        prioridad = 3;
    }
    else{
        estado = "Ingresa normalmente";
        motivo = "Cumple todas las condiciones";
        prioridad = 4;
    }
    //Impresion
    cout << "\nEstado: " << estado << endl;
    cout << "Motivo: " << motivo << endl;
    cout << "Prioridad: " << prioridad << endl;

    return 0;
}
