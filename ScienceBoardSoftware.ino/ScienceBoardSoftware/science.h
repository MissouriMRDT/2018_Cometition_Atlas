#include "RoveBoard.h"
#include "RoveComm.h"
#include <stdint.h>


//enums
typedef enum CommandResult
{
  Success,
  Fail
} CommandResult;

typedef enum CommandIDs
{
  ScienceCommand=0x710,
  ScienceCarousel=0x711  
}CommandIDs;

typedef enum ScienceCommands
{
  sensorAllEnable=0,
  sensorAllDisable=1,
  sensor0Enable=16,
  sensor0Disable=17,
  sensor1Enable=18,
  sensor1Disable=19,
  sensor2Enable=20,
  sensor2Disable=21,
  sensor3Enable=22,
  sensor3Disable=23,
  sensor4Enable=24,
  sensor4Disable=25,
  sensor5Enable=26,
  sensor5Disable=27,
  sensor6Enable=28,
  sensor6Disable=29,
  laserOn=2,
  laserOff=3,
  flapOpen=4,
  flapClose=5,
  spectro=6
    
} ScienceCommands;

typedef enum SensorDataIDs
{
 air_temperature_ID = 0x720,
 soil_temperature_ID = 0x721,
 air_humidity_ID = 0x722,
 soil_humidity_ID = 0x723,
 UV_intensity_ID = 0x724,
 pressure_ID = 0x725,
 methane_ID = 0x726,
}SensorDataIDs;


//var or pins
const uint32_t WATCHDOG_TIMEOUT_US = 2000000; //the amount of microseconds that should pass without getting a transmission from base station before the arm ceases moving for safety
const uint8_t IP_ADDRESS [4] = {192, 168, 1, 135};
EthernetServer PhotoServer(11001);

uint8_t spectro_motor_in_1 = PM_5;
uint8_t spectro_motor_in_2 = PB_3;
uint8_t flapPin = PL_0;
uint8_t carouselPin = PL_2;
int car_positions[5] = {15, 55, 90, 125, 165};

////////////////////
//   Board Pins   //
////////////////////
/////////////////////////////////////////////////
const int SPECTROMETER_LASER_PIN          = PD_4;
const int SPECTROMETER_MIRROR_ENCODER_PIN = PM_0; //pulseIn()
const int SPECTROMETER_MIRROR_MOTOR_PIN_1 = PK_4;
const int SPECTROMETER_MIRROR_MOTOR_PIN_2 = PK_5;
const int SPECTROMETER_PHOTODIODE_1_PIN   = PD_0;
const int SPECTROMETER_PHOTODIODE_2_PIN   = PD_1;

//Sensors/////////////////////////////////////////
const int PRESSURE_I2C                    = 0;
const int METHANE_PIN                     = PE_0;
const int AMMONIA_PIN                     = PE_1;
const int UV_PIN                          = PE_2;
const int AIR_HUMIDITY_PIN                = PE_3;
const int AIR_TEMPERATURE_PIN             = PD_7;

////////////////////
// Sensor Config  //
////////////////////
//Outputs///////////////////////////
float air_pressure_pascals;
float methane_ppm;
float ammonia_ppm;
float uv_intensity;
float air_humidity_rh;
float air_temperature_farenheit;

//Map Consts/////////////////////////////////////////////////////////////////////////
#define AMMONIA_MAX_ADC            1870 //ADC
#define AMMONIA_MAX_ACTUAL         500  //Real Sensor (Enter as Float, ie 1.234 => 1234)
#define AMMONIA_MIN_ADC            1850
#define AMMONIA_MIN_ACTUAL         0

#define UV_MAX_ADC                 400
#define UV_MAX_ACTUAL              20
#define UV_MIN_ADC                 320
#define UV_MIN_ACTUAL              0

#define AIR_HUMIDITY_MAX_ADC       1500
#define AIR_HUMIDITY_MAX_ACTUAL    30
#define AIR_HUMIDITY_MIN_ADC       850
#define AIR_HUMIDITY_MIN_ACTUAL    8

#define AIR_TEMPERATURE_MAX_ADC    1700
#define AIR_TEMPERATURE_MAX_ACTUAL 120
#define AIR_TEMPERATURE_MIN_ADC    940
#define AIR_TEMPERATURE_MIN_ACTUAL 82

uint8_t laserPin = 46; // PD_5
uint8_t photoPin1 = PD_2;
uint8_t photoPin2 = PD_3;
uint8_t LEDPin = PF_0;

uint8_t UVPin = PE_1;
uint8_t airTempPin = PD_1;
uint8_t soilTempPin = PB_5;
uint8_t methanePin = PK_1;
uint8_t airHumidityPin = PD_0;
uint8_t soilMoisturePin = PE_3;
const uint8_t airPressurePin = PM_4;

//functions

void initialize();//All important pre-loop setup goes here
void spectrometer();//Full spectrometer sub-routine

void turnOnLaser();//Turns On the Spectrometer Laser
void turnOffLaser();//Turns Off the Spectrometer Laser
void openFlap();//Opens the Sample Cache Flap
void closeFlap();//Closes the Sample Cache Flap
void rotateCarousel(const uint16_t pos);//Rotates carosel to position 0-4 from current position given a position (0-4)
void spectroMotorOff();//Turns off the spectrometer motor
float instantSoilTemp();//Returns one Soil Temperature reading
float instantAirTemp();//Returns one Air Termperature reading
float instantUV();//Return one UV intensisty reading
float mapfloat(float x, float in_min, float in_max, float out_min, float out_max);//Maps the float value for UV intensity
//float instantPressure();//Returns one pressure reading but has problems so is not implemented
void spectroMotorForward();//Turns the spectrometer motor on, in the forward direction
void spectroMotorReverse();//Turns the spectrometer motor on, but in the reverse direction
float instantAirHumidity();//Returns one Humidity sensor reading
float instantSoilHumidity();//Returns reading from Soil Moisture sensor
float instantMethane();//Returns Methane sensor reading
float instantPressure();//Returns Air Pressure sensor reading
void kill();
