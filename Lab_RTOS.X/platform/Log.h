#ifndef _LOG_H_
#define _LOG_H_

typedef struct{
    int id_registro;
    int lectura;
    char ubicacion[];
    time_t fecha; 
}medida_t;

void agregarMedida(medida_t *);

medida_t * descargaMedida();

void resetarLog();










#endif