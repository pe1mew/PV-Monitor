/*--------------------------------------------------------------------
  This file is part of the PV-monitoring board.
  This code is free software:
  you can redistribute it and/or modify it under the terms of a Creative
  Commons Attribution-NonCommercial 4.0 International License
  (http://creativecommons.org/licenses/by-nc/4.0/) by
  Remko Welling (http://www.pe1mew.nl) E-mail: pe1mew@pe1mew.nl
  The program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  --------------------------------------------------------------------*/

/// \file sensorClasses.h
/// \brief classes for the PV-monitor board
/// \date 14-4-2021
/// \author Remko Welling (pe1mew@pe1mew.nl)
/// \version see version table
///
/// # version table
///
/// Version|Date        |Note
/// -------|------------|----
/// 1.0    | 14-4-2021  | Initial version

#ifndef _SENSOR_CLASS_H_
#define _SENSOR_CLASS_H_

#include <stdint.h> // for uint8_t and uint16_t

/// \class sensor class for reading current values from AC758LCB-050B current sensor
class currentSensor{
  
  public:
    /// \conctructor
    /// \pre If a resistor devider is used to connect the current sensor to the
    /// Arduino, the resistor values shall be provided at instantiation of the class. 
    /// It is assumed that R1 is connected to the "hot"-side of the devider 
    /// while R2 is assumed to connected to ground or "cold"-side. 
    /// \param pin Arduino designated pin to which current sensor is connected
    /// \param r1 value in ohm of the hot-resistor of the resistor devider.
    /// \param r2 value in ohm of the cold-resistor of the resistor devider.
    currentSensor(uint8_t pin, uint16_t r1 = 0, uint16_t r2 = 0);
    ~currentSensor(){}

    /// \get actual current from sensor.
    /// \return measured current in Ampere.
    float getCurrent();

  private:

    uint8_t _pin;         ///< Arduino designated pin to which current sensor is connected
    uint16_t _r1;         ///< resistor value in ohm for the "Hot"-side of the resistor devider.
    uint16_t _r2;         ///< resistor value in ohm for the "cold"-side of the resistor devider.
    float _actualCurrent; ///< Actual current in Ampere. 
    
};

/// \class sensor class for reading voltage
class voltageSensor{
  public:
  
    /// \conctructor
    /// \pre If a resistor devider is used to measure the voltage, the resistor 
    /// values shall be provided at instantiation of the class. 
    /// It is assumed that R1 is connected to the "hot"-side of the devider 
    /// while R2 is assumed to connected to ground or "cold"-side. 
    /// \param pin Arduino designated pin to which the voltage is connected
    /// \param r1 value in ohm of the hot-resistor of the resistor devider.
    /// \param r2 value in ohm of the cold-resistor of the resistor devider.
    voltageSensor(uint8_t pin, uint16_t r1, uint16_t r2);
    ~voltageSensor(){}
    
    /// \get actual voltage.
    /// \return measured current in Voltage.
    float getVoltage();

  private:

    uint8_t _pin;         ///< Arduino designated pin to which current sensor is connected
    uint16_t _r1;         ///< resistor value in ohm for the "Hot"-side of the resistor devider.
    uint16_t _r2;         ///< resistor value in ohm for the "cold"-side of the resistor devider.
    float _actualVoltage; ///< Actual Voltage. 
    
};

#endif
