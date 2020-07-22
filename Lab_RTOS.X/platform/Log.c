#include "Log.h"
#include "../tasks/task_USB_READY.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"
#include "../tasks/task_GPS.h"
#include "task.h"

#include <stdint.h>
#include <string.h>
#include <stdio.h>

static medida_t log[200];
static medida_t * aux;
static uint8_t indice = 0;
static uint8_t string_aux[70];
static uint8_t iterator;
static uint8_t medida_coma;

xSemaphoreHandle semaforo_log;

void Log_init() {
    semaforo_log = xSemaphoreCreateMutex();
}
/*Se recibe un puntero doble, para poder guardar la direccion de memoria de una determinada medida.
 */
uint8_t agregarMedida(uint16_t lectura,medida_t ** med_a_guardar)
  {
    if(bandera_trama==0){
        /*Garantizamos que no se guardaran medidas con ubicacion y tiempo invalidos
         */
        return 0;
    }
    xSemaphoreTake(semaforo_log, portMAX_DELAY);
    aux = &log[indice];
    aux->lectura = lectura;
    aux->fecha = obtenerFecha();
    obtenerUbicacion(&(aux->longitud), &(aux->latitud));
    aux->id_registro = indice; // Ver como se implementa
    *med_a_guardar=aux;
    indice++;

    xSemaphoreGive(semaforo_log);
    return 1;

}

void descargaMedida() {

    xSemaphoreTake(semaforo_log, portMAX_DELAY);
    
    if(indice==0){
        sendUSB("El log esta vacio");
        xSemaphoreGive(semaforo_log);
        return;
    }

    for (iterator = 0; iterator < indice; iterator++) {
        /*
         * Enviar por usb cada medida valida
         */

        vTaskDelay(5);

        aux = &log[iterator];
        medida_coma = (aux->lectura)%10;
        sprintf(string_aux, "\n %s %d %d,%d %f %f \n", ctime(&aux->fecha), aux->id_registro, (aux->lectura)/10,medida_coma , aux->longitud, aux->latitud);
        sendUSB(string_aux);


    }
    xSemaphoreGive(semaforo_log);
}

void resetarLog() {
    xSemaphoreTake(semaforo_log, portMAX_DELAY);
    indice = 0;
    xSemaphoreGive(semaforo_log);
}


