#include "sensorClasses.h"

#include <Arduino.h>

currentSensor::currentSensor(uint8_t pin, uint16_t r1, uint16_t r2):
  _pin(pin),
  _r1(r1),
  _r2(r2),
  _actualCurrent(0.0)
{
  pinMode(_pin, OUTPUT);
}
 
float currentSensor::getCurrent(){
  int sensorValue = analogRead(_pin);
  _actualCurrent = static_cast<float>(sensorValue)*(1.0/(_r1/_r2));
  return _actualCurrent;
}



voltageSensor::voltageSensor(uint8_t pin, uint16_t r1, uint16_t r2):
  _pin(pin),
  _r1(r1),
  _r2(r2),
  _actualVoltage(0.0)
{
  pinMode(_pin, OUTPUT);
}
 
float voltageSensor::getVoltage(){
  int sensorValue = analogRead(_pin);
  _actualVoltage = static_cast<float>(sensorValue)*(1.0/(_r1/_r2));
  return _actualVoltage;
}
