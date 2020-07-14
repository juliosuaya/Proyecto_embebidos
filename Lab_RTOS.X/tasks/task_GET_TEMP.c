#include "task_GET_TEMP.h"
#include "task_BUTTON.h"
#include "../mcc_generated_files/pin_manager.h"
#include "../mcc_generated_files/adc1.h"
#include <stdio.h>

#include "task_USB_READY.h"

static uint8_t temp_max;
static uint8_t temp_min;
static uint8_t temp_umbral;

void Temp_Init() {
    temp_umbral=37;
}

void vTaskTemperature(void * args) {
    int i;
    char str[50];
    double acumulado = 0;

    temp_min = 32;
    temp_max = 42;


    for (;;) {
        boton_apretado();


        for (i = 0; i < 10; i++) {
            acumulado += (tomarTemp()*(temp_max - temp_min) / 1023);

            //vTaskDelay(pdMS_TO_TICKS(250));

        }
        acumulado /= 10;
        acumulado += temp_min;
        agregarMedida(acumulado);
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

    int res = ADC1_ConversionResultGet();
    return res;


}

void set_temp_umbral(uint8_t n) {
    temp_umbral = n;
}

