#ifndef _TASK_USB_READY_H    /* Guard against multiple inclusion */
#define _TASK_USB_READY_H

#include <stdint.h>

void vTaskUSB(void * args);
void sendUSB(uint8_t * str,int size);
uint8_t receiveUSB(void);





#endif
