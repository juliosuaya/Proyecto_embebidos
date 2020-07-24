#include "send_sms.h"
#include "time.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"
#include "SIM808/SIM808.h"
#include "../tasks/task_GPS.h"
#include <string.h>
#include <stdio.h>
#include "../tasks/task_USB_READY.h"

static uint8_t num_cel[15]; 
static uint32_t id;
static uint8_t msj[85];
static uint8_t medida_coma;
static struct tm * fecha_y_hora;

/*
 * Espera al semaforo , y luego le da el formato esperado al mensaje y lo envia.
 */
void send_msj(medida_t * medida) {
    xSemaphoreTake(c_semGSMIsReady, portMAX_DELAY);

    fecha_y_hora = localtime(&(medida->fecha));

    medida_coma = (medida->lectura) % 10;

    sprintf(msj, "%d %d/%d/%d %d:%d:%d %s  %d,%d", id,
            fecha_y_hora->tm_mday, fecha_y_hora->tm_mon, (fecha_y_hora->tm_year) + 1900,
            fecha_y_hora->tm_hour, fecha_y_hora->tm_min, fecha_y_hora->tm_sec,
            obtenerLink(), (medida->lectura) / 10, medida_coma);
    SIM808_sendSMS(num_cel, msj);


    xSemaphoreGive(c_semGSMIsReady);
}

void set_phone_number(int num) {
    sprintf(num_cel, "\"0%d\"", num);//Se agrega un 0 al inicio del numero, ya que el atoi se lo quita.
}

void set_id(int new_id) {
    id = new_id;
}

