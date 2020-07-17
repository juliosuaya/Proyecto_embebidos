#include "task_UI.h"
#include "../mcc_generated_files/usb/usb_device_cdc.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "task_USB_READY.h"
#include "task.h"
#include <stdint.h>
#include "../platform/Log.h"
#include "task_GPS.h"

static uint8_t * menu;
static uint8_t recibir[40];
static uint8_t opcion_menu;

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
               // menu = "ESTE ES EL MENU";
             //   sendUSB(menu);
             //   
                receiveUSB(recibir);
                sendUSB("\n");
                getControl();/*
                opcion_menu=atoi(recibir);
                if(opcion_menu==1){
                    STATES=SET_PHONE;
                }else
                if(opcion_menu==2){
                    STATES=SET_ID;
                }else if(opcion_menu==3){
                    STATES=SET_UMBRAL_TEMP;
                }else if(opcion_menu==4){
                    STATES=SHOW_LOG;
                }else if(opcion_menu==5){
                    STATES=RESET_LOG;
                }else if(opcion_menu==6){
                    STATES=SET_COLORES;
                }else{
                    STATES=MENU;
                }
                
*/
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
                descargaMedida();
                STATES=MENU;
                break;
            case RESET_LOG:
                resetarLog();
                STATES=MENU;
                break;
            case SET_COLORES:
                menu = "NO ESTA IMPLEMENTADO";
                sendUSB(menu);
                STATES=MENU;
                break;
        }


    }
}