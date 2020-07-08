#ifndef _TASK_BUTTON_H
#define _TASK_BUTTON_H

#include "../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"
#include "../freeRTOS/include/task.h"


void vTaskBoton(void * args);
void boton_apretado();
void Boton_Init();
void termino_Medida();



#endif