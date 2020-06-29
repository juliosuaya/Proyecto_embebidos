#ifndef _TASK_USB_READY_H    /* Guard against multiple inclusion */
#define _TASK_USB_READY_H

#include <stdint.h>

void vTaskUSB(void * args);//Actualizar semaforo de USB para permitir envio
void sendUSB(uint8_t * str);
uint8_t receiveUSB(uint8_t * str);





#endif
