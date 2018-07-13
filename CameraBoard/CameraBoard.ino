/*
   Camera Board Software
   Rev 1, 2018
   Used with Camera Board Hardware Rev 1
   Andrew Van Horn

   Controls 4-camera MUX
*/

#include "RoveWare.h"

////////////////////
//   Board Pins   //
////////////////////
/////////////////////////////////////////////////
//X7 Pins
const int MUX1_A1_PIN           = PK_4;
const int MUX1_A2_PIN           = PK_5;
const int OUTPUT_ENABLE1_OE_PIN = PG_1;
//X9 Pins
//const int MUX2_A1_PIN           = PF_2;
//const int MUX2_A2_PIN           = PF_3;
//const int OUTPUT_ENABLE2_OE_PIN = PG_1; //Output Enable
/*The MUX folows the following truth table (MUX2, MUX1):
   (0,0): Camera 1
   (0,1): Camera 2
   (0,1): Camera 3
   (0,1): Camera 4
*/

////////////////////
// RoveComm Setup //
////////////////////

//Data ID definition///////////////////////////////////////////////////////////////////////////////////////////////////////////
const uint16_t CAMERA_MUX_CHANNEL = CAMERA_MUX_CHANNEL_1;  //Use this data ID for Camera Board 1 if you have two Camera Boards
//const uint16_t CAMERA_MUX_CHANNEL = CAMERA_MUX_CHANNEL_2;  //Use this data ID for Camera Board 2 if you have two Camera Boards

///////////////////////////////////////////////////////////////////////////////////////////////////
void setup() {
  RoveComm_begin(ROVE_FIRST_OCTET, ROVE_SECOND_OCTET, ROVE_THIRD_OCTET, CAMERABOARD_FOURTH_OCTET);
  delay(10);
  Serial.begin(9600);
  pinMode(MUX1_A1_PIN,           OUTPUT);
  pinMode(MUX1_A2_PIN,           OUTPUT);
  pinMode(OUTPUT_ENABLE1_OE_PIN, OUTPUT);

  digitalWrite(MUX1_A1_PIN,           LOW);
  digitalWrite(MUX1_A2_PIN,           LOW);
  digitalWrite(OUTPUT_ENABLE1_OE_PIN, LOW);
  delay(10);
}

//////////////////////////////////////////////////////////
void loop() {
  //Read Variables/////////
  uint16_t data_id;
  size_t command_data_size;
  uint8_t data_value;

  delay(100);
  RoveComm_read(&data_id, &command_data_size, &data_value);

  Serial.print("ID: ");
  Serial.println(data_id);
  Serial.print("Value: ");
  Serial.println(data_value);

  if (data_id == CAMERA_MUX_CHANNEL)
  {
    switch (data_value)
    {
      case (MUX_CAMERA_1):
        digitalWrite(MUX1_A1_PIN, LOW);
        digitalWrite(MUX1_A2_PIN, LOW);
        Serial.println("MUX Camera 1");
        break;
      case (MUX_CAMERA_2):
        digitalWrite(MUX1_A1_PIN, HIGH);
        digitalWrite(MUX1_A2_PIN, LOW);
        Serial.println("MUX Camera 2");
        break;
      case (MUX_CAMERA_3):
        digitalWrite(MUX1_A1_PIN, LOW);
        digitalWrite(MUX1_A2_PIN, HIGH);
        Serial.println("MUX Camera 3");
        break;
      case (MUX_CAMERA_4):
        digitalWrite(MUX1_A1_PIN, HIGH);
        digitalWrite(MUX1_A2_PIN, HIGH);
        Serial.println("MUX Camera 4");
        break;
      default:
        break;
    }
  }
}
