#include "task_GET_TEMP.h"
#include "task_BUTTON.h"
#include "../mcc_generated_files/pin_manager.h"
#include <stdio.h>
#include "task_USB_READY.h"

void vTaskTemperature(void * args) {
    int i;
    for (;;) {
        boton_apretado();
        int acumulado;
        
        for (i = 0; i < 10; i++) {
            if (flag_btn_1 == 1) {//boton se toca de vuelta
                flag_btn_1 =0;
                killTemperature();
            }
            acumulado+=1;
            sendUSB("tomado");
            vTaskDelay(pdMS_TO_TICKS(1000));
        }

    }
}
