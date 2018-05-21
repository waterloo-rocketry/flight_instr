#include "Arduino.h"
#include "Wire.h"

#include "nodeio.ioio.h"
#include "IMU.h"

#define IMU_ADDR    0x6A
#define IMU_ODR_XL  0x07    // 833 Hz high performance
#define IMU_FS_XL   0x01    // +/- 16g
#define IMU_ODR_G   0x07    // 833 Hz high performance  
#define IMU_FS_G    0x03    // 2000 dps

int main() {
	init();

    Wire.begin();
    Serial.begin(9600);
    Serial.println("start");
 
    float accel_vals[3]; // 0: x, 1: y, 2: z
    float gyro_vals[3]; // 0: x, 1: y, 2: z

    imu_init(IMU_ADDR, IMU_ODR_XL, IMU_FS_XL, IMU_ODR_G, IMU_FS_G);

    while(1) {
        //imu_accel_read(IMU_ADDR, accel_vals);
        imu_gyro_read(IMU_ADDR, gyro_vals);
        delay(100);
    }
   
    /*
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

