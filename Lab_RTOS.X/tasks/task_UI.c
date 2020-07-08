#include "task_UI.h"
#include "../mcc_generated_files/usb/usb_device_cdc.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "task_USB_READY.h"
#include "task.h"
#include <stdint.h>
#include "../platform/Log.h"

static uint8_t * menu;
static uint8_t recibir[40];

void vTaskMenu(void * args) {

    enum {
        MENU,
        SET_PHONE,
        SET_ID,
        SET_UMBRAL_TEMP,
        SHOW_LOG,
        RESET_LOG,
        SET_COLORES//OPCIONAL
    } STATES;

    STATES = MENU;

    for (;;) {
        switch (STATES) {
            case MENU:
                menu = "ESTE ES EL MENU";
                sendUSB(menu);
                descargaMedida();
                receiveUSB(recibir);
                

                break;

            case SET_PHONE:
                menu = "ESTE ES EL MENU";
                sendUSB(menu);
                receiveUSB(recibir);
                break;
            case SET_ID:
                menu = "ESTE ES EL MENU";
                sendUSB(menu);
                receiveUSB(recibir);
                break;
            case SET_UMBRAL_TEMP:
                menu = "ESTE ES EL MENU";
                sendUSB(menu);
                receiveUSB(recibir);
                break;
            case SHOW_LOG:
                menu = "ESTE ES EL MENU";
                sendUSB(menu);
                receiveUSB(recibir);
                break;
            case RESET_LOG:
                menu = "ESTE ES EL MENU";
                sendUSB(menu);
                receiveUSB(recibir);
                break;
            case SET_COLORES:
                menu = "NO ESTA IMPLEMENTADO";
                sendUSB(menu);
                receiveUSB(recibir);
                break;
        }


    }
}