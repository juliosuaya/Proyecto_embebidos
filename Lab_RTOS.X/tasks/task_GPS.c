#include "task_GPS.h"
#include "../platform/SIM808/SIM808.h"
#include "../platform/GPS/GPS.h"

uint8_t trama [140];
GPSPosition_t ubicacion;
struct tm hora;
uint8_t link;
void averiguarUbicacion(void){
    SIM808_getNMEA(trama);
    SIM808_validateNMEAFrame(trama);
    GPS_getPosition(&ubicacion,trama);
    GPS_getUTC(&hora,trama);
    sendUSB(ctime(mktime(&hora)));
    GPS_generateGoogleMaps(link,ubicacion);
    sendUSB(link);
    
}