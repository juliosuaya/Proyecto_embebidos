#ifndef _LOG_H_
#define _LOG_H_
#include <time.h>

typedef struct{
    int id_registro;
    int lectura;
    char * ubicacion;
    time_t fecha; 
}medida_t;

void agregarMedida(medida_t * medida);
/*Recibir el struct o solo la medida?
 */

void descargaMedida();

void resetarLog();










#endif