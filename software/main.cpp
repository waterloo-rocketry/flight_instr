#include "Arduino.h"
#include "Wire.h"
#include "SPI.h"
#include "SD.h" 

#include "nodeio.ioio.h"
#include "IMU.h"
#include "gyro.h"
#include "MS5xxx.h"
#include "sdlogger.h"

#define OPEN_POS 2
#define CLOSE_POS 3
#define CLOSE_NEG 4
#define OPEN_NEG 5
#define LIMIT_OPEN 6
#define LIMIT_CLOSED 7

#define SD_CS 10

#define PRESSURE_PIN 6
#define THERM1 0
#define THERM2 1

#ifdef NODE_INJ
// P1
#define PRESSURE_SCALE (610.5 * 5 / 1024.0)
#define PRESSURE_ADD (-2.2)
#else
// P2
#define PRESSURE_SCALE (604 * 5 / 1024.0)
#define PRESSURE_ADD (-265)
#endif

#define SENSOR_SEND_INTERVAL 1000   // in milliseconds

// see LSM6DS3HTR datasheet
imu_t imu = {
    .imu_addr   = 0x6A,

    .odr_xl     = 0x07,     // 833 hz high performance mode
    .fs_xl      = 0x01,     // +/- 16g
    .odr_g      = 0x07,     // 833 Hz high performance mode
    .fs_g       = 0x03,     // 2000 dps

    // FIXME
    .scale_xl   = XL_FS_16,
    .scale_g    = G_FS_2000
};

gyro_t gyro =  {
    .addr = 0x69,

    .gyr_bwp    = 0x2,      // normal mode
    .gyr_odr    = 0xc,      // 1.6 kHz
    .gyr_range  = 0x1,      // 1000 dps
    .scale      = 32.8      // associated to 1000 dps
};

MS5xxx baro(&Wire);          // tied to external library
float analogSensors[3];     // ox/cc pressure, temperature raw x2
sensor_data_t rlcs_data;    // data to be sent back to rlcs

int main() {
	init();
    
    Wire.begin();
    Serial.begin(9600);

    pinMode(SD_CS, OUTPUT);
    sd_init(SD_CS);

    nio_init(CLOSE_POS, CLOSE_NEG, OPEN_POS, OPEN_NEG);
    pinMode(LIMIT_OPEN, INPUT);
    pinMode(LIMIT_CLOSED, INPUT);

    imu_init(&imu);
    gyro_init(&gyro);
    baro.connect();
    baro.ReadProm();
    
    long last_millis = 0;
    while (1) {
        nio_refresh();

        imu_accel_read(&imu);
        imu_gyro_read(&imu);
        gyro_read(&gyro);
        float baro_pressure = baro.GetPres();
        float baro_temp = baro.GetTemp();

        analogSensors[0] = analogRead(PRESSURE_PIN) * PRESSURE_SCALE + PRESSURE_ADD;
        analogSensors[1] = analogRead(THERM1);
        analogSensors[2] = analogRead(THERM2);

        rlcs_data.pressure = analogSensors[0];
        rlcs_data.valve_limitswitch_open = !digitalRead(LIMIT_OPEN);
        rlcs_data.valve_limitswitch_open = !digitalRead(LIMIT_CLOSED);
        
        if (millis() - last_millis > SENSOR_SEND_INTERVAL) {
            nio_send_sensor_data(&rlcs_data);
            last_millis = millis();
        }

        // don't forget to log the timestamp...

        delay(100);
    }

    // write sensor data to buffer
    // if buffer is full enough, write to SD

    return 0;
}

