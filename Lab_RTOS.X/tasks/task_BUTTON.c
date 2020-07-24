#include "task_BUTTON.h"

#include "../mcc_generated_files/pin_manager.h"

#include "portmacro.h"
#include <stdio.h>
#include "task_GET_TEMP.h"



static SemaphoreHandle_t semaforo_btn;
static uint8_t wasPressed;
static TaskHandle_t task_temp;

void Boton_Init() {
    semaforo_btn = xSemaphoreCreateBinary();
    wasPressed = 0;
    flag_btn_1 = 0;
}

/*
 * Esta tarea gestiona la flag_btn_1.
 */
void vTaskBoton(void * args) {

    task_temp = xTaskGetHandle("task4");

    for (;;) {
        if (flag_btn_1==1 && wasPressed == 0) { //Se apreta por primera vez
            wasPressed=1;
            vTaskDelay(pdMS_TO_TICKS(100)); 
            xSemaphoreGive(semaforo_btn);
            flag_btn_1 = 0; 
        }
        if (flag_btn_1==1 && wasPressed == 1) { //Se presiona por segunda vez
            vTaskDelete(task_temp);
            xTaskCreate( vTaskTemperature, "task4", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY+4, &task_temp );
            termino_Medida();
        }
    }
}

void boton_apretado() {
    xSemaphoreTake(semaforo_btn, portMAX_DELAY);
}

void termino_Medida() {
    flag_btn_1 = 0;
    wasPressed = 0;
    setear_leds(BLACK);
}