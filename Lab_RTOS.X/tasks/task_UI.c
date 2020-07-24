#include "task_UI.h"
#include "../mcc_generated_files/usb/usb_device_cdc.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "task_USB_READY.h"
#include "task.h"
#include <stdint.h>
#include <string.h>
#include "../platform/Log.h"
#include "task_GPS.h"

static uint8_t * menu;
static uint8_t recibir[40];
static int uint_auxiliar;
static int uint_auxiliar2;

/*
 * Se encarga de la UI.
 * Mediante el switch case se gestionan las posibles entradas validas al menu.
 * Actua de intermediaria entre otras task y el usuario.
 */


void vTaskMenu(void * args) {

    for (;;) {
        vTaskDelay(100);

        menu = "\n Presione 1 para setear numero de telefono, \n"
                "2 para setear id dispositivo, \n"
                "3 para setear temperatura umbral,\n"
                "4 para descargar el log \n"
                "5 para resetear el log.\n";
        sendUSB(menu);
        //   
        receiveUSB(recibir);
        sendUSB("\n");
        uint_auxiliar = atoi(recibir);
        switch (uint_auxiliar) {
            case(1):
                menu = "Insertar numero celular: ";
                sendUSB(menu);
                receiveUSB(recibir);
                set_phone_number(atoi(recibir));
                break;
            case(2):

                menu = "Insertar id dispositivo: ";
                sendUSB(menu);
                receiveUSB(recibir);
                set_id(atoi(recibir));
                break;

            case(3):

                menu = "Insertar temperatura umbral en el siguiente formato: 37,2";
                sendUSB(menu);
                receiveUSB(recibir);
                sscanf(recibir, "%d,%d", &uint_auxiliar, &uint_auxiliar2);
                uint_auxiliar = uint_auxiliar * 10 + uint_auxiliar2;
                while (uint_auxiliar > 420 || uint_auxiliar < 320 || uint_auxiliar2>9 ) {
                    menu = "El valor debe estar entre 32,0 y 42,0. Con un decimal";
                    sendUSB(menu);
                    receiveUSB(recibir);
                    sscanf(recibir, "%d,%d", &uint_auxiliar, &uint_auxiliar2);
                    uint_auxiliar = uint_auxiliar * 10 + uint_auxiliar2;
                }
                set_temp_umbral(uint_auxiliar);
                break;
            case (4):
                descargaMedida();
                break;
            case 5:
                resetarLog();
                break;
            default:
                break;
        }


    }
}
