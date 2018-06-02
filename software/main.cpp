#include "Arduino.h"
#include "Wire.h"

#include "nodeio.ioio.h"
#include "IMU.h"

#define IMU_ADDR    0x6A
#define IMU_ODR_XL  0x07    // 833 Hz high performance
#define IMU_FS_XL   0x01    // +/- 16g
#define IMU_ODR_G   0x07    // 833 Hz high performance  
#define IMU_FS_G    0x03    // 2000 dps

#define OPEN_POS 2
#define CLOSE_POS 3
#define CLOSE_NEG 4
#define OPEN_NEG 5
#define LIMIT_OPEN 6
#define LIMIT_CLOSED 7

#define PRESSURE_PIN 6
#define PRESSURE_VENT_SCALE (610.5 * 5 / 1024.0)
#define PRESSURE_VENT_ADD (-2.2)
#define PRESSURE_INJ_SCALE (604 * 5 / 1024.0)
#define PRESSURE_INJ_ADD (-265)

#define SENSOR_SEND_INTERVAL 1000   // in milliseconds

int main() {
	init();

    pinMode(LIMIT_OPEN, INPUT);
    pinMode(LIMIT_CLOSED, INPUT);
    sensor_data_t rlcs_sensors;

    nio_init(CLOSE_POS, CLOSE_NEG, OPEN_POS, OPEN_NEG);

    long last_logged_millis = millis();
    while (1) {
        if (millis() - last_logged_millis > SENSOR_SEND_INTERVAL) {
#ifdef NODE_VENT
            rlcs_sensors.pressure = analogRead(PRESSURE_PIN) * PRESSURE_VENT_SCALE + PRESSURE_VENT_ADD;
#else
            rlcs_sensors.pressure = analogRead(PRESSURE_PIN) * PRESSURE_INJ_SCALE + PRESSURE_INJ_ADD;
#endif
            // active low
            rlcs_sensors.valve_limitswitch_open = !digitalRead(LIMIT_OPEN);
            rlcs_sensors.valve_limitswitch_closed = !digitalRead(LIMIT_CLOSED);
            nio_send_sensor_data(&rlcs_sensors);
            last_logged_millis = millis();
        }
        nio_refresh();
    }

    /*
    Serial.begin(9600);
    Wire.begin();

    while (1) {
      byte error, address;
      int nDevices;
     
      Serial.println("Scanning...");
     
      nDevices = 0;
      for(address = 1; address < 127; address++ )
      {
        // The i2c_scanner uses the return value of
        // the Write.endTransmisstion to see if
        // a device did acknowledge to the address.
        Wire.beginTransmission(address);
        error = Wire.endTransmission();
     
        if (error == 0)
        {
          Serial.print("I2C device found at address 0x");
          if (address<16)
            Serial.print("0");
          Serial.print(address,HEX);
          Serial.println("  !");
     
          nDevices++;
        }
        else if (error==4)
        {
          Serial.print("Unknown error at address 0x");
          if (address<16)
            Serial.print("0");
          Serial.println(address,HEX);
        }    
      }
      if (nDevices == 0)
        Serial.println("No I2C devices found\n");
      else
        Serial.println("done\n");
     
      delay(5000);           // wait 5 seconds for next scan
    }
    */
}

