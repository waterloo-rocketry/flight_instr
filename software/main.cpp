#include "Arduino.h"
#include "Wire.h"

#include "nodeio.ioio.h"
#include "IMU.h"
#include "gyro.h"
#include "MS5xxx.h"

#define IMU_ADDR    0x6A
#define IMU_ODR_XL  0x07    // 833 Hz high performance
#define IMU_FS_XL   0x01    // +/- 16g
#define IMU_ODR_G   0x07    // 833 Hz high performance  
#define IMU_FS_G    0x03    // 2000 dps

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

int main() {
	init();

    gyro_readout_t gyro_data;

    Serial.begin(9600);
    Wire.begin();

    // set bandwidth, odr, range
    gyro_init(GYRO_ADDR, 0x2, 0xc, 0x4);
    // calibrate, but do not write to NVM until final data rate chosen
    gyro_calibrate(GYRO_ADDR);

    while (1)  {
        gyro_read(GYRO_ADDR, &gyro_data);
        delay(100);
    }

    return 0;
}

