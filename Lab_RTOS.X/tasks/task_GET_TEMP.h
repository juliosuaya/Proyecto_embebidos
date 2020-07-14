#ifndef _TASK_GET_TEMP_H    /* Guard against multiple inclusion */
#define _TASK_GET_TEMP_H    /* Guard against multiple inclusion */
#include <stdint.h>

void vTaskTemperature(void * args);
void Temp_Init() ;

void set_temp_umbral(uint8_t n);

#endif 