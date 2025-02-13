#include "task_GET_TEMP.h"
#include "task_BUTTON.h"
#include "../mcc_generated_files/pin_manager.h"
#include "../mcc_generated_files/adc1.h"
#include <stdio.h>
#include "task_USB_READY.h"
#include "../platform/send_sms.h"

static uint8_t temp_max;
static uint8_t temp_min;
static uint16_t temp_umbral;
static ws2812_t array_leds[8];
static medida_t * medida_aux;
static uint8_t i;
static int acumulado = 0;

static enum {
    APAGADO,
    PRENDIDO
} leds_parpadeo_state;

void Temp_Init() {
    temp_umbral = 370;
}

/*
 * Esta funcion tiene una maquina de estados que enciende y apaga los led.
 */

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

/*
 * Recibe un color por parametro y enciende los led de dicho color.
 */

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

/*
 * Interactua con el modulo adc para obtener la conversion.
 */
int tomarTemp() {

    ADC1_ChannelSelect(Temp);

    ADC1_Start();
    ADC1_Stop();

    while (!ADC1_IsConversionComplete()) {
        ADC1_Tasks();
        vTaskDelay(pdMS_TO_TICKS(1));
    }

    int res = ADC1_ConversionResultGet();
    if (res > 1023) {
        return 1023;
    }
    return res;


}

/*
 * Esta task, espera a que boton_apretado termine(Le entreguen el semaforo).
 * Luego toma 10 temperaturas.
 * Realiza las cuentas necesarias para convertir a valor de temperatura.
 * Se intenta agregar la medida al log, si se hace correctamente, y la temperatura 
 * supera la umbral, se envia un mensaje.
 * Si la temperatura es mayor a la umbral los leds se prenden de rojo, caso contrario
 * se prenden de verde.
 */

void vTaskTemperature(void * args) {
    temp_min = 32;
    temp_max = 42;

    leds_parpadeo_state = PRENDIDO;

    for (;;) {
        boton_apretado();
        acumulado = 0;


        for (i = 0; i < 10; i++) {
            acumulado += tomarTemp();
            maq_est_leds();

            vTaskDelay(pdMS_TO_TICKS(250));

        }

        if ((acumulado * 10) % 1023 >= 5) {
            acumulado = acumulado * 10 / 1023 + 320;
            acumulado += 1;
        } else {
            acumulado = acumulado * 10 / 1023 + 320;
        }
        if (agregarMedida(acumulado, &medida_aux)) {
            if (acumulado > (temp_umbral)) {
                send_msj(medida_aux);
            }
        }
        if (acumulado > (temp_umbral)) {
            setear_leds(RED);
        } else {
            setear_leds(GREEN);
        }
        vTaskDelay(2000);
        //Se llama a termino_Medida() ya que apaga los leds y resetea las flags.
        termino_Medida();
    }
}




void set_temp_umbral(int n) {
    temp_umbral = n;
}

