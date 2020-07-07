#include "task_BUTTON.h"

#include "../mcc_generated_files/pin_manager.h"

#include "portmacro.h"
#include <stdio.h>
#include "task_USB_READY.h"



static SemaphoreHandle_t semaforo_btn;
static int killTask;
static TaskHandle_t task_temp;

void Boton_Init(){
    semaforo_btn=xSemaphoreCreateBinary();
}

void vTaskBoton(void * args){
    
    killTask=0;
    task_temp=xTaskGetHandle("task4");
    
    for(;;){
        if(flag_btn_1){       
            flag_btn_1==0;//Asegurarse que la otra task llega antes
            xSemaphoreGive(semaforo_btn);
        }
        if(killTask){
            /*matar y revivir get temp
             */
            vTaskDelete(task_temp);
            sendUSB("muerto");
        }
    }
}
void boton_apretado(){
    xSemaphoreTake(semaforo_btn,portMAX_DELAY);
}

void killTemperature(){
    /*flag para mater func*/
}