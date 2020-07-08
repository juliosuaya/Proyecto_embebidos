#include "task_GET_TEMP.h"
#include "task_BUTTON.h"
#include "../mcc_generated_files/pin_manager.h"
#include "../mcc_generated_files/adc1.h"
#include <stdio.h>
#include "task_USB_READY.h"

void vTaskTemperature(void * args) {
    int i;
    char str[50];
    for (;;) {
        boton_apretado();
        int acumulado = 0;

        for (i = 0; i < 10; i++) {
            acumulado += tomarTemp();


        }
        sprintf(str, "%d", acumulado / 10);
        sendUSB(str);
        termino_Medida();

    }
}

int tomarTemp() {/*
    int conversion, i = 0;
    ADC1_Start();
    vTaskDelay(pdMS_TO_TICKS(100));
    ADC1_Stop();
    while (!ADC1_IsConversionComplete()) {
        ADC1_Tasks();
    }
    conversion = ADC1_ConversionResultGet();
    
    return conversion;*/
    return 5;
}