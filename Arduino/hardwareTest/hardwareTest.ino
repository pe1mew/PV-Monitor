
#include <Arduino.h>

#include "sensorClasses.h"

#define JP1A_PIN 3
#define JP1B_PIN 4

#define LED1_PIN 13
#define LED2_PIN 12
#define LED3_PIN 11
#define LED4_PIN 10

#define V_SENS_LOAD_PIN A3
#define V_SENS_BATT_PIN A2
#define V_SENS_PV_PIN A1
#define I_SENS_LOAD_PIN A6
#define I_SENS_BATT_PIN A5
#define I_SENS_PV_PIN A4

#define R1 10000
#define R2 1000

currentSensor loadCurrent = currentSensor(I_SENS_LOAD_PIN, R1, R2);

// the setup function runs once when you press reset or power the board
void setup() {
    //Initialize serial and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  // prints title with ending line break
  Serial.println("Serial ready");
  
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(LED1_PIN, OUTPUT);
  pinMode(LED2_PIN, OUTPUT);
  pinMode(LED3_PIN, OUTPUT);
  pinMode(LED4_PIN, OUTPUT);
  pinMode(JP1A_PIN, INPUT);
  pinMode(JP1B_PIN, INPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED1_PIN, HIGH);
  delay(100);
  digitalWrite(LED1_PIN, LOW);
  delay(1000);
  digitalWrite(LED2_PIN, HIGH);
  delay(100);
  digitalWrite(LED2_PIN, LOW);
  delay(1000);

//  Serial.print(digitalRead(JP1A_PIN));
  if(digitalRead(JP1A_PIN) == LOW){
    digitalWrite(LED3_PIN, HIGH);
  }else{
    digitalWrite(LED3_PIN, LOW);
  }

  if(digitalRead(JP1B_PIN) == LOW){
    digitalWrite(LED4_PIN, HIGH);
  }else{
    digitalWrite(LED4_PIN, LOW);
  }

  float currentLoad = loadCurrent.getCurrent();
  Serial.println(currentLoad);
}
