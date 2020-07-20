#ifndef _TASK_BUTTON_H
#define _TASK_BUTTON_H

#include "../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"
#include "../freeRTOS/include/task.h"

/*La tarea vTaskBoton se encarga de responder ante el presionado del boton.
 */
void vTaskBoton(void * args);


/* la funcion boton_apretado, es meramente utilitaria, para poder preguntar desde afuera
 * si fue o no pulsado el boton.
 */
void boton_apretado();
void Boton_Init();


void termino_Medida();



#endif