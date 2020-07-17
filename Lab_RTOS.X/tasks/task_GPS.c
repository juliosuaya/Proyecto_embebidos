#include "task_GPS.h"
#include "../platform/SIM808/SIM808.h"
#include "../platform/GPS/GPS.h"
#include "../freeRTOS/include/FreeRTOS.h"
#include "../freeRTOS/include/semphr.h"

static uint8_t trama [255];
static GPSPosition_t ubicacion;
static GPSPosition_t ubicacionPrueba;
static struct tm hora;
static uint8_t link[150];
static int8_t bandera;
static time_t tiempo;

void vTaskGPS(void * args) {
    for (;;) {
        xSemaphoreTake(c_semGPSIsReady, portMAX_DELAY);
        bandera = 0;

        while (bandera != 1) {
            SIM808_getNMEA(trama);
            bandera = SIM808_validateNMEAFrame(trama);
        }
        GPS_getPosition(&ubicacion, &trama[0]);
        GPS_getUTC(&hora, trama);
        GPS_generateGoogleMaps(link, ubicacion);
        tiempo = mktime(&hora);
        xSemaphoreGive(c_semGPSIsReady);
    }
}

void getControl() {
    sendUSB(trama);


    sendUSB(ctime(&tiempo));

    sendUSB(link);

/*
    xSemaphoreTake(c_semGSMIsReady, portMAX_DELAY);
    SIM808_sendSMS("\"098283527\"", "Prueba");
    xSemaphoreGive(c_semGSMIsReady);
*/
}

time_t obtenerFecha() {
    return tiempo;
}

void obtenerUbicacion(float * longitud, float * latitud) {
    *longitud =(float) ubicacion.longitude;
    *latitud = (float) ubicacion.latitude;
}
