#include "task_GET_TEMP.h"
#include "task_BUTTON.h"
#include "../mcc_generated_files/pin_manager.h"
#include "../mcc_generated_files/adc1.h"
#include <stdio.h>
#include <stdint.h>
#include "task_USB_READY.h"

void vTaskTemperature(void * args) {
    int i;
    char str[50];
    for (;;) {
        boton_apretado();
        int acumulado = 0;

        for (i = 0; i < 10; i++) {
            acumulado += tomarTemp();

            //vTaskDelay(pdMS_TO_TICKS(250));

        }
        sprintf(str, "%d \n", acumulado/10);
        sendUSB(str); //Luego habria que guardar en el log
        termino_Medida();

    }
}

int tomarTemp() {

    ADC1_ChannelSelect(Temp);

    ADC1_Start();
    ADC1_Stop();

    while (!ADC1_IsConversionComplete()) {
        ADC1_Tasks();
        vTaskDelay(pdMS_TO_TICKS(1));
    }

    int res=ADC1_ConversionResultGet();
    return res;


}