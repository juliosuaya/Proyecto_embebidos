#ifndef _TASK_GPS_H
#define _TASK_GPS_H
#include "../tasks/task_USB_READY.h"
#include <stdint.h>
#include <time.h>


void vTaskGPS(void * args);
void getControl();

time_t obtenerFecha(); //Verificar formato
void obtenerUbicacion(uint8_t *,uint8_t *);

#endif