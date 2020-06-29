#include "task_USB_READY.h"
#include "../mcc_generated_files/usb/usb_device_cdc.h"
#include "../../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"
#include <string.h>


static SemaphoreHandle_t semaforoEnvio;
static SemaphoreHandle_t semaforoRecibido;
static uint8_t * string_aux ;
static uint8_t recibir;
static uint8_t largo;



void vTaskUSB(void * args){
    semaforoEnvio=xSemaphoreCreateBinary();
    semaforoRecibido=xSemaphoreCreateBinary();
    for(;;){
        CDCTxService();
        if(USBUSARTIsTxTrfReady()){
            xSemaphoreGive(semaforoEnvio);
        }
        if(recibir==1){
            largo = getsUSBUSART(string_aux, 40);
            if(largo>0){
                xSemaphoreGive(semaforoRecibido);
                
            }
            
        }
    }
}//Actualizar semaforo de USB para permitir envio
void sendUSB(uint8_t * str){
    xSemaphoreTake(semaforoEnvio, portMAX_DELAY);
    putsUSBUSART(str);
}
uint8_t * receiveUSB(uint8_t * str){
    recibir=1;
    string_aux=str;
    xSemaphoreTake(semaforoRecibido, portMAX_DELAY);
    
    recibir=0;    
    str[largo] = '\0';
    return str;
}