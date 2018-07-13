#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include <IPAddress.h>
#include "RoveBoard.h"
#include "RoveComm.h"

//RoveComm Setup//////////
uint16_t data_id;
size_t   data_size;
uint8_t  data_value;
RoveCommWiFiUdp RoveComm;

//Software Configuration///////////////////////////////////////////////////
#define USE_SENSOR_SERIAL 1  //Set to 1 to send sensor readings over Serial
#define USE_WIFI 1           //Set to 1 to use RoveComm WiFi

//Pin Map////////////////
#define TEMPERATURE_PIN 5
#define MOISTURE_PIN    4

//Sensor Calibration///////////////////////////////////
#define TEMPERATURE_MAX_ADC      955 //Analog Read
#define TEMPERATURE_MAX_ACTUAL   50  //Sensor Reading
#define TEMPERATURE_MIN_ADC      213
#define TEMPERATURE_MIN_ACTUAL   0

#define MOISTURE_MAX_ADC         90
#define MOISTURE_MAX_ACTUAL      90
#define MOISTURE_MIN_ADC         115
#define MOISTURE_MIN_ACTUAL      5

//Global Variables//////////////
int temperature_adc;
int moisture_adc;
uint16_t temperature_celcius;
uint16_t moisture_rh;

//////////////////////
//IP Address
unsigned char POD_SUBNET =  136;
char ssid[]         =  "MRDT Wifi";
char password[]     =  "Rovin2012";

//Data IDs//////////////////////
#define TEMPERATURE_DATA_ID 1832
#define MOISTURE_DATA_ID    1833


////////////////////////////////////////////////////////
void setup() {
  pinMode(TEMPERATURE_PIN, OUTPUT);
  pinMode(MOISTURE_PIN, OUTPUT);
  digitalWrite(TEMPERATURE_PIN, 0);
  digitalWrite(MOISTURE_PIN, 0);
  pinMode(A0, INPUT);
  
  Serial.begin(9600);
  delay(100);
  delay(100);
  
  RoveComm.begin(192, 168, 1, POD_SUBNET, ssid, password);
}

void loop() {
  //Get Temperature
  digitalWrite(TEMPERATURE_PIN, 1);
  temperature_adc = analogRead(A0);
  temperature_celcius = map(temperature_adc, TEMPERATURE_MIN_ADC, TEMPERATURE_MAX_ADC, TEMPERATURE_MIN_ACTUAL, TEMPERATURE_MAX_ACTUAL);
  digitalWrite(TEMPERATURE_PIN, 0);

  delay(100);
  //Read Moisture Sensor
  digitalWrite(MOISTURE_PIN, 1);
  delay(100);
  moisture_adc = analogRead(A0);
  moisture_rh = map(moisture_adc, MOISTURE_MIN_ADC, MOISTURE_MAX_ADC, MOISTURE_MIN_ACTUAL, MOISTURE_MAX_ACTUAL);
  digitalWrite(MOISTURE_PIN, 0);


  //Output RoveComm
  RoveComm.read(&data_id, &data_size, &data_value);
  
 /* Serial.print("ID: ");
  Serial.println(data_id);
  Serial.print("Value: ");
  Serial.println(data_value);*/
  
  RoveComm.write(TEMPERATURE_DATA_ID, sizeof(temperature_celcius), &temperature_celcius);
  RoveComm.write(MOISTURE_DATA_ID, sizeof(moisture_rh), &moisture_rh);
  
    if((WiFi.status() == WL_CONNECTED))
    {
      Serial.println("Connected");
    }
    else
    {
      Serial.println("Disconnected");
    }
  /*  Serial.print("Temperature Ain:");
    Serial.println(temperature_adc);
    Serial.print("Temperature Out:");
    Serial.println(temperature_farenheit);
    Serial.print("Moisture Ain:");
    Serial.println(moisture_adc);
    Serial.print("Moisture Out:");
    Serial.println(moisture_rh);
    Serial.println("");*/
   
}
