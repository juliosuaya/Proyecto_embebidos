/**
  PIN MANAGER Generated Driver File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description:
    This source file provides implementations for PIN MANAGER.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.167.0
        Device            :  PIC32MM0256GPM064
    The generated drivers are tested against the following:
        Compiler          :  XC32 v2.40
        MPLAB 	          :  MPLAB X v5.35
*/

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#ifndef _PIN_MANAGER_H
#define _PIN_MANAGER_H
/**
    Section: Includes
*/
#include <xc.h>
#include <stdbool.h>

extern uint8_t flag_btn_1;
/**
    Section: Device Pin Macros
*/
/**
  @Summary
    Sets the GPIO pin, RA0, high using LATA0.

  @Description
    Sets the GPIO pin, RA0, high using LATA0.

  @Preconditions
    The RA0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA0 high (1)
    GPRS_PWRKEY_SetHigh();
    </code>

*/
#define GPRS_PWRKEY_SetHigh()          ( LATASET = (1 << 0) )
/**
  @Summary
    Sets the GPIO pin, RA0, low using LATA0.

  @Description
    Sets the GPIO pin, RA0, low using LATA0.

  @Preconditions
    The RA0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA0 low (0)
    GPRS_PWRKEY_SetLow();
    </code>

*/
#define GPRS_PWRKEY_SetLow()           ( LATACLR = (1 << 0) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RA0, low or high using LATA0.

  @Preconditions
    The RA0 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RA0 to low.
    GPRS_PWRKEY_SetValue(false);
    </code>

*/
inline static void GPRS_PWRKEY_SetValue(bool value)
{
  if(value)
  {
    GPRS_PWRKEY_SetHigh();
  }
  else
  {
    GPRS_PWRKEY_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RA0, using LATA0.

  @Description
    Toggles the GPIO pin, RA0, using LATA0.

  @Preconditions
    The RA0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA0
    GPRS_PWRKEY_Toggle();
    </code>

*/
#define GPRS_PWRKEY_Toggle()           ( LATAINV = (1 << 0) )
/**
  @Summary
    Reads the value of the GPIO pin, RA0.

  @Description
    Reads the value of the GPIO pin, RA0.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA0
    postValue = GPRS_PWRKEY_GetValue();
    </code>

*/
#define GPRS_PWRKEY_GetValue()         PORTAbits.RA0
/**
  @Summary
    Configures the GPIO pin, RA0, as an input.

  @Description
    Configures the GPIO pin, RA0, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA0 as an input
    GPRS_PWRKEY_SetDigitalInput();
    </code>

*/
#define GPRS_PWRKEY_SetDigitalInput()   ( TRISASET = (1 << 0) )
/**
  @Summary
    Configures the GPIO pin, RA0, as an output.

  @Description
    Configures the GPIO pin, RA0, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA0 as an output
    GPRS_PWRKEY_SetDigitalOutput();
    </code>

*/
#define GPRS_PWRKEY_SetDigitalOutput()   ( TRISACLR = (1 << 0) )
/**
  @Summary
    Sets the GPIO pin, RA1, high using LATA1.

  @Description
    Sets the GPIO pin, RA1, high using LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA1 high (1)
    GPRS_RESET_SetHigh();
    </code>

*/
#define GPRS_RESET_SetHigh()          ( LATASET = (1 << 1) )
/**
  @Summary
    Sets the GPIO pin, RA1, low using LATA1.

  @Description
    Sets the GPIO pin, RA1, low using LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA1 low (0)
    GPRS_RESET_SetLow();
    </code>

*/
#define GPRS_RESET_SetLow()           ( LATACLR = (1 << 1) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RA1, low or high using LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RA1 to low.
    GPRS_RESET_SetValue(false);
    </code>

*/
inline static void GPRS_RESET_SetValue(bool value)
{
  if(value)
  {
    GPRS_RESET_SetHigh();
  }
  else
  {
    GPRS_RESET_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RA1, using LATA1.

  @Description
    Toggles the GPIO pin, RA1, using LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA1
    GPRS_RESET_Toggle();
    </code>

*/
#define GPRS_RESET_Toggle()           ( LATAINV = (1 << 1) )
/**
  @Summary
    Reads the value of the GPIO pin, RA1.

  @Description
    Reads the value of the GPIO pin, RA1.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA1
    postValue = GPRS_RESET_GetValue();
    </code>

*/
#define GPRS_RESET_GetValue()         PORTAbits.RA1
/**
  @Summary
    Configures the GPIO pin, RA1, as an input.

  @Description
    Configures the GPIO pin, RA1, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA1 as an input
    GPRS_RESET_SetDigitalInput();
    </code>

*/
#define GPRS_RESET_SetDigitalInput()   ( TRISASET = (1 << 1) )
/**
  @Summary
    Configures the GPIO pin, RA1, as an output.

  @Description
    Configures the GPIO pin, RA1, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA1 as an output
    GPRS_RESET_SetDigitalOutput();
    </code>

*/
#define GPRS_RESET_SetDigitalOutput()   ( TRISACLR = (1 << 1) )
/**
  @Summary
    Sets the GPIO pin, RA10, high using LATA10.

  @Description
    Sets the GPIO pin, RA10, high using LATA10.

  @Preconditions
    The RA10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA10 high (1)
    LED_CTRL_SetHigh();
    </code>

*/
#define LED_CTRL_SetHigh()          ( LATASET = (1 << 10) )
/**
  @Summary
    Sets the GPIO pin, RA10, low using LATA10.

  @Description
    Sets the GPIO pin, RA10, low using LATA10.

  @Preconditions
    The RA10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA10 low (0)
    LED_CTRL_SetLow();
    </code>

*/
#define LED_CTRL_SetLow()           ( LATACLR = (1 << 10) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RA10, low or high using LATA10.

  @Preconditions
    The RA10 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RA10 to low.
    LED_CTRL_SetValue(false);
    </code>

*/
inline static void LED_CTRL_SetValue(bool value)
{
  if(value)
  {
    LED_CTRL_SetHigh();
  }
  else
  {
    LED_CTRL_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RA10, using LATA10.

  @Description
    Toggles the GPIO pin, RA10, using LATA10.

  @Preconditions
    The RA10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA10
    LED_CTRL_Toggle();
    </code>

*/
#define LED_CTRL_Toggle()           ( LATAINV = (1 << 10) )
/**
  @Summary
    Reads the value of the GPIO pin, RA10.

  @Description
    Reads the value of the GPIO pin, RA10.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA10
    postValue = LED_CTRL_GetValue();
    </code>

*/
#define LED_CTRL_GetValue()         PORTAbits.RA10
/**
  @Summary
    Configures the GPIO pin, RA10, as an input.

  @Description
    Configures the GPIO pin, RA10, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA10 as an input
    LED_CTRL_SetDigitalInput();
    </code>

*/
#define LED_CTRL_SetDigitalInput()   ( TRISASET = (1 << 10) )
/**
  @Summary
    Configures the GPIO pin, RA10, as an output.

  @Description
    Configures the GPIO pin, RA10, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA10 as an output
    LED_CTRL_SetDigitalOutput();
    </code>

*/
#define LED_CTRL_SetDigitalOutput()   ( TRISACLR = (1 << 10) )
/**
  @Summary
    Sets the GPIO pin, RA11, high using LATA11.

  @Description
    Sets the GPIO pin, RA11, high using LATA11.

  @Preconditions
    The RA11 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA11 high (1)
    GPRS_STATUS_SetHigh();
    </code>

*/
#define GPRS_STATUS_SetHigh()          ( LATASET = (1 << 11) )
/**
  @Summary
    Sets the GPIO pin, RA11, low using LATA11.

  @Description
    Sets the GPIO pin, RA11, low using LATA11.

  @Preconditions
    The RA11 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA11 low (0)
    GPRS_STATUS_SetLow();
    </code>

*/
#define GPRS_STATUS_SetLow()           ( LATACLR = (1 << 11) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RA11, low or high using LATA11.

  @Preconditions
    The RA11 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RA11 to low.
    GPRS_STATUS_SetValue(false);
    </code>

*/
inline static void GPRS_STATUS_SetValue(bool value)
{
  if(value)
  {
    GPRS_STATUS_SetHigh();
  }
  else
  {
    GPRS_STATUS_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RA11, using LATA11.

  @Description
    Toggles the GPIO pin, RA11, using LATA11.

  @Preconditions
    The RA11 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA11
    GPRS_STATUS_Toggle();
    </code>

*/
#define GPRS_STATUS_Toggle()           ( LATAINV = (1 << 11) )
/**
  @Summary
    Reads the value of the GPIO pin, RA11.

  @Description
    Reads the value of the GPIO pin, RA11.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA11
    postValue = GPRS_STATUS_GetValue();
    </code>

*/
#define GPRS_STATUS_GetValue()         PORTAbits.RA11
/**
  @Summary
    Configures the GPIO pin, RA11, as an input.

  @Description
    Configures the GPIO pin, RA11, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA11 as an input
    GPRS_STATUS_SetDigitalInput();
    </code>

*/
#define GPRS_STATUS_SetDigitalInput()   ( TRISASET = (1 << 11) )
/**
  @Summary
    Configures the GPIO pin, RA11, as an output.

  @Description
    Configures the GPIO pin, RA11, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA11 as an output
    GPRS_STATUS_SetDigitalOutput();
    </code>

*/
#define GPRS_STATUS_SetDigitalOutput()   ( TRISACLR = (1 << 11) )
/**
  @Summary
    Sets the GPIO pin, RA13, high using LATA13.

  @Description
    Sets the GPIO pin, RA13, high using LATA13.

  @Preconditions
    The RA13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA13 high (1)
    BTN2_SetHigh();
    </code>

*/
#define BTN2_SetHigh()          ( LATASET = (1 << 13) )
/**
  @Summary
    Sets the GPIO pin, RA13, low using LATA13.

  @Description
    Sets the GPIO pin, RA13, low using LATA13.

  @Preconditions
    The RA13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA13 low (0)
    BTN2_SetLow();
    </code>

*/
#define BTN2_SetLow()           ( LATACLR = (1 << 13) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RA13, low or high using LATA13.

  @Preconditions
    The RA13 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RA13 to low.
    BTN2_SetValue(false);
    </code>

*/
inline static void BTN2_SetValue(bool value)
{
  if(value)
  {
    BTN2_SetHigh();
  }
  else
  {
    BTN2_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RA13, using LATA13.

  @Description
    Toggles the GPIO pin, RA13, using LATA13.

  @Preconditions
    The RA13 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA13
    BTN2_Toggle();
    </code>

*/
#define BTN2_Toggle()           ( LATAINV = (1 << 13) )
/**
  @Summary
    Reads the value of the GPIO pin, RA13.

  @Description
    Reads the value of the GPIO pin, RA13.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA13
    postValue = BTN2_GetValue();
    </code>

*/
#define BTN2_GetValue()         PORTAbits.RA13
/**
  @Summary
    Configures the GPIO pin, RA13, as an input.

  @Description
    Configures the GPIO pin, RA13, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA13 as an input
    BTN2_SetDigitalInput();
    </code>

*/
#define BTN2_SetDigitalInput()   ( TRISASET = (1 << 13) )
/**
  @Summary
    Configures the GPIO pin, RA13, as an output.

  @Description
    Configures the GPIO pin, RA13, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA13 as an output
    BTN2_SetDigitalOutput();
    </code>

*/
#define BTN2_SetDigitalOutput()   ( TRISACLR = (1 << 13) )
/**
  @Summary
    Sets the GPIO pin, RA7, high using LATA7.

  @Description
    Sets the GPIO pin, RA7, high using LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA7 high (1)
    LEDA_SetHigh();
    </code>

*/
#define LEDA_SetHigh()          ( LATASET = (1 << 7) )
/**
  @Summary
    Sets the GPIO pin, RA7, low using LATA7.

  @Description
    Sets the GPIO pin, RA7, low using LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA7 low (0)
    LEDA_SetLow();
    </code>

*/
#define LEDA_SetLow()           ( LATACLR = (1 << 7) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RA7, low or high using LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RA7 to low.
    LEDA_SetValue(false);
    </code>

*/
inline static void LEDA_SetValue(bool value)
{
  if(value)
  {
    LEDA_SetHigh();
  }
  else
  {
    LEDA_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RA7, using LATA7.

  @Description
    Toggles the GPIO pin, RA7, using LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA7
    LEDA_Toggle();
    </code>

*/
#define LEDA_Toggle()           ( LATAINV = (1 << 7) )
/**
  @Summary
    Reads the value of the GPIO pin, RA7.

  @Description
    Reads the value of the GPIO pin, RA7.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA7
    postValue = LEDA_GetValue();
    </code>

*/
#define LEDA_GetValue()         PORTAbits.RA7
/**
  @Summary
    Configures the GPIO pin, RA7, as an input.

  @Description
    Configures the GPIO pin, RA7, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA7 as an input
    LEDA_SetDigitalInput();
    </code>

*/
#define LEDA_SetDigitalInput()   ( TRISASET = (1 << 7) )
/**
  @Summary
    Configures the GPIO pin, RA7, as an output.

  @Description
    Configures the GPIO pin, RA7, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA7 as an output
    LEDA_SetDigitalOutput();
    </code>

*/
#define LEDA_SetDigitalOutput()   ( TRISACLR = (1 << 7) )
/**
  @Summary
    Sets the GPIO pin, RB14, high using LATB14.

  @Description
    Sets the GPIO pin, RB14, high using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB14 high (1)
    LEDB_SetHigh();
    </code>

*/
#define LEDB_SetHigh()          ( LATBSET = (1 << 14) )
/**
  @Summary
    Sets the GPIO pin, RB14, low using LATB14.

  @Description
    Sets the GPIO pin, RB14, low using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB14 low (0)
    LEDB_SetLow();
    </code>

*/
#define LEDB_SetLow()           ( LATBCLR = (1 << 14) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB14, low or high using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB14 to low.
    LEDB_SetValue(false);
    </code>

*/
inline static void LEDB_SetValue(bool value)
{
  if(value)
  {
    LEDB_SetHigh();
  }
  else
  {
    LEDB_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB14, using LATB14.

  @Description
    Toggles the GPIO pin, RB14, using LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB14
    LEDB_Toggle();
    </code>

*/
#define LEDB_Toggle()           ( LATBINV = (1 << 14) )
/**
  @Summary
    Reads the value of the GPIO pin, RB14.

  @Description
    Reads the value of the GPIO pin, RB14.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB14
    postValue = LEDB_GetValue();
    </code>

*/
#define LEDB_GetValue()         PORTBbits.RB14
/**
  @Summary
    Configures the GPIO pin, RB14, as an input.

  @Description
    Configures the GPIO pin, RB14, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB14 as an input
    LEDB_SetDigitalInput();
    </code>

*/
#define LEDB_SetDigitalInput()   ( TRISBSET = (1 << 14) )
/**
  @Summary
    Configures the GPIO pin, RB14, as an output.

  @Description
    Configures the GPIO pin, RB14, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB14 as an output
    LEDB_SetDigitalOutput();
    </code>

*/
#define LEDB_SetDigitalOutput()   ( TRISBCLR = (1 << 14) )
/**
  @Summary
    Sets the GPIO pin, RB15, high using LATB15.

  @Description
    Sets the GPIO pin, RB15, high using LATB15.

  @Preconditions
    The RB15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB15 high (1)
    BTN1_SetHigh();
    </code>

*/
#define BTN1_SetHigh()          ( LATBSET = (1 << 15) )
/**
  @Summary
    Sets the GPIO pin, RB15, low using LATB15.

  @Description
    Sets the GPIO pin, RB15, low using LATB15.

  @Preconditions
    The RB15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB15 low (0)
    BTN1_SetLow();
    </code>

*/
#define BTN1_SetLow()           ( LATBCLR = (1 << 15) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RB15, low or high using LATB15.

  @Preconditions
    The RB15 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RB15 to low.
    BTN1_SetValue(false);
    </code>

*/
inline static void BTN1_SetValue(bool value)
{
  if(value)
  {
    BTN1_SetHigh();
  }
  else
  {
    BTN1_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RB15, using LATB15.

  @Description
    Toggles the GPIO pin, RB15, using LATB15.

  @Preconditions
    The RB15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB15
    BTN1_Toggle();
    </code>

*/
#define BTN1_Toggle()           ( LATBINV = (1 << 15) )
/**
  @Summary
    Reads the value of the GPIO pin, RB15.

  @Description
    Reads the value of the GPIO pin, RB15.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB15
    postValue = BTN1_GetValue();
    </code>

*/
#define BTN1_GetValue()         PORTBbits.RB15
/**
  @Summary
    Configures the GPIO pin, RB15, as an input.

  @Description
    Configures the GPIO pin, RB15, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB15 as an input
    BTN1_SetDigitalInput();
    </code>

*/
#define BTN1_SetDigitalInput()   ( TRISBSET = (1 << 15) )
/**
  @Summary
    Configures the GPIO pin, RB15, as an output.

  @Description
    Configures the GPIO pin, RB15, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB15 as an output
    BTN1_SetDigitalOutput();
    </code>

*/
#define BTN1_SetDigitalOutput()   ( TRISBCLR = (1 << 15) )
/**
  @Summary
    Sets the GPIO pin, RC5, high using LATC5.

  @Description
    Sets the GPIO pin, RC5, high using LATC5.

  @Preconditions
    The RC5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC5 high (1)
    Temp_SetHigh();
    </code>

*/
#define Temp_SetHigh()          ( LATCSET = (1 << 5) )
/**
  @Summary
    Sets the GPIO pin, RC5, low using LATC5.

  @Description
    Sets the GPIO pin, RC5, low using LATC5.

  @Preconditions
    The RC5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC5 low (0)
    Temp_SetLow();
    </code>

*/
#define Temp_SetLow()           ( LATCCLR = (1 << 5) )

/**
  @Summary
    Sets a value to the GPIO pin.

  @Description
    Sets or Resets the GPIO pin, RC5, low or high using LATC5.

  @Preconditions
    The RC5 must be set to an output.

  @Returns
    None.

  @Param
    bool value; : value to be set to the GPIO pin.

  @Example
    <code>
    // Set RC5 to low.
    Temp_SetValue(false);
    </code>

*/
inline static void Temp_SetValue(bool value)
{
  if(value)
  {
    Temp_SetHigh();
  }
  else
  {
    Temp_SetLow();
  }
}

/**
  @Summary
    Toggles the GPIO pin, RC5, using LATC5.

  @Description
    Toggles the GPIO pin, RC5, using LATC5.

  @Preconditions
    The RC5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RC5
    Temp_Toggle();
    </code>

*/
#define Temp_Toggle()           ( LATCINV = (1 << 5) )
/**
  @Summary
    Reads the value of the GPIO pin, RC5.

  @Description
    Reads the value of the GPIO pin, RC5.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RC5
    postValue = Temp_GetValue();
    </code>

*/
#define Temp_GetValue()         PORTCbits.RC5
/**
  @Summary
    Configures the GPIO pin, RC5, as an input.

  @Description
    Configures the GPIO pin, RC5, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC5 as an input
    Temp_SetDigitalInput();
    </code>

*/
#define Temp_SetDigitalInput()   ( TRISCSET = (1 << 5) )
/**
  @Summary
    Configures the GPIO pin, RC5, as an output.

  @Description
    Configures the GPIO pin, RC5, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC5 as an output
    Temp_SetDigitalOutput();
    </code>

*/
#define Temp_SetDigitalOutput()   ( TRISCCLR = (1 << 5) )

/**
    Section: Function Prototypes
*/
/**
  @Summary
    Configures the pin settings of the PIC32MM0256GPM064
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description
    This is the generated manager file for the PIC24 / dsPIC33 / PIC32MM MCUs device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    void SYSTEM_Initialize(void)
    {
        // Other initializers are called from this function
        PIN_MANAGER_Initialize();
    }
    </code>

*/
void PIN_MANAGER_Initialize (void);

/**
  @Summary
    Callback for BTN1 Pin.

  @Description
    This routine is callback for BTN1 Pin

  @Param
    None.

  @Returns
    None
 
 
  @Example 
    <code>
        BTN1_SetInterruptHandler(&BTN1_CallBack);
    </code>
*/
void BTN1_CallBack(void);


/**
  @Summary
    Assigns a function pointer with a callback address.

  @Description
    This routine assigns a function pointer with a callback address.

  @Param
    Address of the callback routine.

  @Returns
    None
 
  @Example 
    <code>
        BTN1_SetInterruptHandler(&BTN1_CallBack);
    </code>
*/
void BTN1_SetInterruptHandler(void (* InterruptHandler)(void));

/**
  @Summary
    Assigns a function pointer with a callback address.

  @Description
    This routine assigns a function pointer with a callback address.

  @Param
    Address of the callback routine.

  @Returns
    None
 
  @Example 
    <code>
        BTN1_SetIOCInterruptHandler(&BTN1_CallBack);
    </code>
*/
void __attribute__((deprecated("\nThis will be removed in future MCC releases. \nUse BTN1_SetInterruptHandler instead."))) BTN1_SetIOCInterruptHandler(void *handler);


#endif
