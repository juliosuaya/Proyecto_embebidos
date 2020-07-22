#ifndef _TASK_GET_TEMP_H    /* Guard against multiple inclusion */
#define _TASK_GET_TEMP_H    /* Guard against multiple inclusion */
#include <stdint.h>
#include "../platform/WS2812.h"


void vTaskTemperature(void * args);
void Temp_Init() ;
void setear_leds(ws2812_t color);
void set_temp_umbral(int n);



#endif 