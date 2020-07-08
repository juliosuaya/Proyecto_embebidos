#include "Log.h"
#include "../tasks/task_USB_READY.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"

#include <stdint.h>
#include <string.h>

static medida_t log[200]; 
static medida_t aux; 
static int indice=0;
static uint8_t string_aux[255];

void agregarMedida(medida_t * medida)
/*Recibir el struct o solo la medida?
 */{
    
    
    
    indice++;
}

void descargaMedida(){
    /*TEST
     */
    aux.fecha=1;
    aux.id_registro=2;
    aux.lectura=3;
    aux.ubicacion="13515aasdad3";
    log[indice]=aux;
    indice++;
    /*
     */
    int iterator=0;
    sprintf(string_aux,"%d %d %d \n",1,37.5,12356789);
    sendUSB(string_aux);
    for(iterator=0;iterator<indice;iterator++){
        /*
         * Enviar por usb cada medida valida
         */
        aux=log[iterator];
        sprintf(string_aux, "%s %d %d %s",ctime(&aux.fecha),aux.id_registro,aux.lectura,aux.ubicacion );
        sendUSB(string_aux);
        
    }
}

void resetarLog(){
    indice=0;
}


