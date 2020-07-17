#include "task_GET_TEMP.h"
#include "task_BUTTON.h"
#include "../mcc_generated_files/pin_manager.h"
#include "../mcc_generated_files/adc1.h"
#include <stdio.h>
#include "task_USB_READY.h"


static uint8_t temp_max;
static uint8_t temp_min;
static uint8_t temp_umbral;
static ws2812_t array_leds[8];

static enum {
    APAGADO,
    PRENDIDO
} leds_parpadeo_state;

void Temp_Init() {
    temp_umbral = 37;
}

void vTaskTemperature(void * args) {
    int i;
    char str[50];
    uint16_t acumulado = 0;

    temp_min = 32;
    temp_max = 42;

    leds_parpadeo_state = PRENDIDO;

    for (;;) {
        boton_apretado();


        for (i = 0; i < 10; i++) {
            acumulado += tomarTemp(); //*100 / 1023 + 320;
            maq_est_leds();

            vTaskDelay(pdMS_TO_TICKS(250));

        }
        acumulado = (acumulado * 100 / 1023);

        acumulado= acumulado % 10 >= 5 ? (acumulado+10)/10 + 320 : acumulado/10 + 320;

        agregarMedida(acumulado);
        if (acumulado > (temp_umbral * 10)) {
            setear_leds(RED);
        } else {
            setear_leds(GREEN);
        }

        acumulado = 0;

        vTaskDelay(2000);

        termino_Medida();


    }
}

void maq_est_leds() {
    switch (leds_parpadeo_state) {
        case(APAGADO):
            setear_leds(BLACK);
            leds_parpadeo_state = PRENDIDO;
            break;
        case(PRENDIDO):
            setear_leds(BLUE);
            leds_parpadeo_state = APAGADO;
            break;
    }

}

void setear_leds(ws2812_t color) {
    array_leds[0] = color;
    array_leds[1] = color;
    array_leds[2] = color;
    array_leds[3] = color;
    array_leds[4] = color;
    array_leds[5] = color;
    array_leds[6] = color;
    array_leds[7] = color;
    WS2812_send(array_leds, 8);
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

