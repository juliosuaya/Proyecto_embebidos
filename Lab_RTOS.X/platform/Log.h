#ifndef _LOG_H_
#define _LOG_H_
#include <time.h>
#include <stdint.h>

typedef struct {
    int id_registro; //Puede ser el indice del array? o si es un valor "acumulativo"
    uint16_t lectura; //Como se va a formatear, 
    uint8_t latitud; // Guardar como longitud y latitud 
    uint8_t longitud; // Guardar como longitud y latitud 
    time_t fecha;
} medida_t;

void agregarMedida(uint16_t lectura);
/*Recibir el struct o solo la medida?
 */

void descargaMedida();

void resetarLog();










#endif