#include <Wire.h>
#include <Adafruit_INA219.h>

Adafruit_INA219 ina219;

typedef union
{
  float number;
  uint8_t bytes[5];
} FLOATUNION_t;

FLOATUNION_t byte_t_send;

void setup(void) 
{
  Serial.begin(115200);
  while (!Serial) {
      // will pause Zero, Leonardo, etc until serial console opens
      delay(1);
  //Serial.println("mWatts mAmperes");
  }

  uint32_t currentFrequency;
  
  // Initialize the INA219.
  // By default the initialization will use the largest range (32V, 2A).  However
  // you can call a setCalibration function to change this range (see comments).
  if (! ina219.begin()) {
    //Serial.println("Failed to find INA219 chip");
    while (1) { delay(10); }
  }
  // To use a slightly lower 32V, 1A range (higher precision on amps):
  //ina219.setCalibration_32V_1A();
  // Or to use a lower 16V, 400mA range (higher precision on volts and amps):
  ina219.setCalibration_16V_400mA();
}

void loop(void) 
{
  /*
  float shuntvoltage = 0;
  float busvoltage = 0;
  float current_mA = 0;
  float loadvoltage = 0;
  float power_mW = 0;
  
  shuntvoltage = ina219.getShuntVoltage_mV();
  busvoltage = ina219.getBusVoltage_V();
  current_mA = ina219.getCurrent_mA();
  power_mW = ina219.getPower_mW();
  loadvoltage = busvoltage + (shuntvoltage / 1000);
  
  Serial.print("Bus Voltage:   "); Serial.print(busvoltage); Serial.println(" V");
  Serial.print("Shunt Voltage: "); Serial.print(shuntvoltage); Serial.println(" mV");
  Serial.print("Load Voltage:  "); Serial.print(loadvoltage); Serial.println(" V");
  Serial.print("Current:       "); Serial.print(current_mA); Serial.println(" mA");
  Serial.print("Power:         "); Serial.print(power_mW); Serial.println(" mW");
  Serial.println("");
  */
  /*
  uint16_t x = 0x00FF;
  uint16_t y = x >> 8;
  Serial.write(y);
  Serial.write(x);
  */

  float current_mA = ( ina219.getCurrent_mA() );

  //byte_t_send.number = current_mA;
  byte_t_send.number = -100;
  /*
  float floatVar = 1;
  uint8_t* pointer = (uint8_t*)&floatVar;
  Serial.print(byte_t_send.bytes[0], HEX);
  Serial.print("|");
  Serial.print(byte_t_send.bytes[1], HEX);
  Serial.print("|");
  Serial.print(byte_t_send.bytes[2], HEX);
  Serial.print("|");
  Serial.println(byte_t_send.bytes[3], HEX);
  Serial.println(byte_t_send.number, HEX);
  
  Serial.println("--------------------------");
  Serial.print(*(pointer), HEX);
  Serial.print("|");
  Serial.print(*(pointer + 1), HEX);
  Serial.print("|");
  Serial.print(*(pointer + 2), HEX);
  Serial.print("|");
  Serial.println(*(pointer + 3), HEX);
  Serial.println(*((float*)pointer));
  Serial.println("#################################");
  */
  Serial.write(byte_t_send.bytes[0]);
  Serial.write(byte_t_send.bytes[1]);
  Serial.write(byte_t_send.bytes[2]);
  Serial.write(byte_t_send.bytes[3]);
  /*
  Serial.print(",");
  float power_mW = ina219.getPower_mW();
  Serial.println(power_mW);
  */
  delay(100);
}
