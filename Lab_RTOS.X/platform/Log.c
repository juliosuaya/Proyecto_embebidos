#include "Log.h"

static medida_t log[200]; 
static medida_t aux; 
static int index=0;

void agregarMedida(medida_t *)
/*Recibir el struct o solo la medida?
 */{
    
    
    
    index++;
}

medida_t * descargaMedida(){
    int iterator=0;
    for(iterator=0;iterator<index;iterator++){
        /*
         * Enviar por usb cada medida valida
         */
    }
}

void resetarLog(){
    index=0;
}


