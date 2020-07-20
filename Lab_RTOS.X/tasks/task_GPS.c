#include "task_GPS.h"
#include "../mcc_generated_files/pin_manager.h"
#include "../platform/SIM808/SIM808.h"
#include "../platform/GPS/GPS.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"

static uint8_t trama [255];
static GPSPosition_t ubicacion;
static GPSPosition_t ubicacionAux;
static struct tm hora;
static uint8_t link[50];
static int8_t bandera;
static time_t tiempo;
uint8_t bandera_trama;

void vTaskGPS(void * args) {
    LEDA_SetHigh();
    for (;;) {
        xSemaphoreTake(c_semGPSIsReady, portMAX_DELAY);
        bandera = 0;

        while (bandera != 1) {
            SIM808_getNMEA(trama);
            bandera = SIM808_validateNMEAFrame(trama);
        }
        if(bandera_trama==0){
            LEDA_SetLow();
        }
        bandera_trama=1;
        GPS_getPosition(&ubicacion, &trama[0]);
        GPS_getUTC(&hora, trama);
        GPS_generateGoogleMaps(link, ubicacion);
        tiempo = mktime(&hora);
        tiempo-=(3600*3);//Por la diferencia horaria
        
        xSemaphoreGive(c_semGPSIsReady);
    }
}



time_t obtenerFecha() {
    return tiempo;
}

void obtenerUbicacion(float * longitud, float * latitud) {
    *longitud =(float) ubicacion.longitude;
    *latitud = (float) ubicacion.latitude;
}

uint8_t * obtenerLink(){
    return link;
}
