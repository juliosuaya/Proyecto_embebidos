#ifndef _TASK_GPS_H
#define _TASK_GPS_H
#include "../tasks/task_USB_READY.h"
#include <stdint.h>
#include <time.h>

extern uint8_t bandera_trama;

void vTaskGPS(void * args);


time_t obtenerFecha();
void obtenerUbicacion(float *,float *);

uint8_t * obtenerLink();


#endif