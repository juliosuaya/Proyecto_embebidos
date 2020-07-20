#ifndef _LOG_H_
#define _LOG_H_
#include <time.h>
#include <stdint.h>



/*
 * las medidas se guardan en uint16 para ser mas eficientes en terminos de memoria y evitar crear 200 float.
 * A la hora de mostrar las medidas, se les da el formato correspondiente
 */
typedef struct {
    uint8_t id_registro; 
    uint16_t lectura; 
    float latitud; 
    float longitud; 
    time_t fecha;
} medida_t;

uint8_t agregarMedida(uint16_t,medida_t **);

void descargaMedida();

void resetarLog();

void Log_init();










#endif