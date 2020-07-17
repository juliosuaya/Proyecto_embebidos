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
static int indice=0;
static uint8_t string_aux[255];
static int iterator;


void agregarMedida(uint16_t lectura)
/*Recibir el struct o solo la medida?
 */{
    aux=&log[indice];
    aux->lectura=lectura;
    aux->fecha=obtenerFecha();
    obtenerUbicacion(&(aux->longitud), &(aux->latitud));
    aux->id_registro=indice; // Ver como se implementa
    
    indice++;
}

void descargaMedida(){

    
    for(iterator=0;iterator<indice;iterator++){
        /*
         * Enviar por usb cada medida valida
         */
//        sprintf(string_aux,"%d \n", iterator);
//        sendUSB(string_aux);
//        string_aux[0]='\0';
        
        vTaskDelay(5);
        
        aux=&log[iterator];
        sprintf(string_aux,"\n %s %d %d %d %d",ctime(&aux->fecha),aux->id_registro,aux->lectura,aux->longitud,aux->latitud);
        sendUSB(string_aux);
        
        
    }
}

void resetarLog(){
    indice=0;
}


