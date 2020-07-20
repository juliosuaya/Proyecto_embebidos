#ifndef _LOG_H_
#define _LOG_H_
#include <time.h>
#include <stdint.h>

typedef struct {
    uint8_t id_registro; //Puede ser el indice del array? o si es un valor "acumulativo"
    uint16_t lectura; //Como se va a formatear, 
    float latitud; // Guardar como longitud y latitud 
    float longitud; // Guardar como longitud y latitud 
    time_t fecha;
} medida_t;

uint8_t agregarMedida(uint16_t,medida_t **);
/*Recibir el struct o solo la medida?
 */

void descargaMedida();

void resetarLog();

void Log_init();










#endif