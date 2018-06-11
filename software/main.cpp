#include "Arduino.h"
#include "Wire.h"
#include "SPI.h"
#include "SD.h" 
#include "nodeio.ioio.h"
#include "IMU.h"
#include "gyro.h"
#include "MS5xxx.h"

#define GYRO_ADDR 0x69

#define OPEN_POS 2
#define CLOSE_POS 3
#define CLOSE_NEG 4
#define OPEN_NEG 5
#define LIMIT_OPEN 6
#define LIMIT_CLOSED 7

#define PRESSURE_PIN 6
// P1
#define PRESSURE_INJ_SCALE (610.5 * 5 / 1024.0)
#define PRESSURE_INJ_ADD (-2.2)
// P2
#define PRESSURE_VENT_SCALE (604 * 5 / 1024.0)
#define PRESSURE_VENT_ADD (-265)

#define SENSOR_SEND_INTERVAL 1000   // in milliseconds

// see LSM6DS3HTR datasheet
imu_t imu = {
    .imu_addr   = 0x6A,

    .odr_xl     = 0x07,     // 833 hz high performance mode
    .fs_xl      = 0x01,     // +/- 16g
    .odr_g      = 0x07,     // 833 Hz high performance mode
    .fs_g       = 0x03,     // 2000 dps

    .scale_xl   = XL_FS_16,
    .scale_g    = G_FS_2000
};

int main() {
	init();
    
    Wire.begin();
    Serial.begin(9600);

    imu_init(&imu);
    
    while (1) {
        imu_gyro_read(&imu);
        delay(100);
    }

    // initialized nodeio
    // initiallize all sensors

    // LOOP:
    // refresh nio
    // update all sensors
    // write sensor data to buffer
    // if buffer is full enough, write to SD

    return 0;
}

