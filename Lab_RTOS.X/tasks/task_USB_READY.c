#include "task_USB_READY.h"
#include "../mcc_generated_files/usb/usb_device_cdc.h"
#include "../../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"
#include <string.h>


static SemaphoreHandle_t semaforoEnvio;
static SemaphoreHandle_t semaforoRecibido;
static uint8_t * string_aux;
static uint8_t recibir;
static int8_t largo;

void USB_Init() {
    semaforoEnvio = xSemaphoreCreateBinary();
    semaforoRecibido = xSemaphoreCreateBinary();
}

void vTaskUSB(void * args) {
    for (;;) {
        if ((USBGetDeviceState() >= CONFIGURED_STATE) && !USBIsDeviceSuspended()) {
            CDCTxService();
            if (USBUSARTIsTxTrfReady()) {
                xSemaphoreGive(semaforoEnvio);
            }
            if (recibir == 1) {
                largo = getsUSBUSART(string_aux, 40);
                if (largo > 0) {
                    xSemaphoreGive(semaforoRecibido);

                }

            }
        }
    }
}//Actualizar semaforo de USB para permitir envio

void sendUSB(uint8_t * str) {
    xSemaphoreTake(semaforoEnvio, portMAX_DELAY);
    putsUSBUSART(str);
}

void receiveUSB(uint8_t * str) {
    recibir = 1;
    string_aux = str;
    xSemaphoreTake(semaforoRecibido, portMAX_DELAY);

    recibir = 0;
    str[largo] = '\0';
}