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
static uint8_t uint_auxiliar;

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
                vTaskDelay(100);
                menu = "\n Presione 1 para setear numero de telefono, \n"
                        "2 para setear id dispositivo, \n"
                        "3 para setear temperatura umbral,\n"
                        "4 para descargar el log \n"
                        "5 para resetear el log.\n"
                        "(6 para cambiar colores)\n";
                sendUSB(menu);
             //   
                receiveUSB(recibir);
                sendUSB("\n");
                
                
                
                uint_auxiliar=atoi(recibir);
                if(uint_auxiliar==1){
                    STATES=SET_PHONE;
                }else
                if(uint_auxiliar==2){
                    STATES=SET_ID;
                }else if(uint_auxiliar==3){
                    STATES=SET_UMBRAL_TEMP;
                }else if(uint_auxiliar==4){
                    STATES=SHOW_LOG;
                }else if(uint_auxiliar==5){
                    STATES=RESET_LOG;
                }else if(uint_auxiliar==6){
                    STATES=SET_COLORES;
                }else{
                    STATES=MENU;
                }
                

                break;

            case SET_PHONE:
                menu = "NO_IMPLEMENTADO";
                sendUSB(menu);
                STATES=MENU;
                break;
            case SET_ID:
                menu = "ESTE ES EL MENU";
                sendUSB(menu);
                receiveUSB(recibir);
                STATES=MENU;
                break;
            case SET_UMBRAL_TEMP:
                receiveUSB(recibir);
                uint_auxiliar=atoi(recibir);
                if(uint_auxiliar>42 || uint_auxiliar<32){
                    menu="El valor debe estar entre 32 y 42";
                    sendUSB(menu);
                    
                    break;
                }
                set_temp_umbral(uint_auxiliar);
                STATES=MENU;
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
                getControl();
                STATES=MENU;
                break;
        }


    }
}