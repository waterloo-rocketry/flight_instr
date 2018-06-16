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
    .imu_addr   = 0x6B,

    .odr_xl     = 0x07,     // 833 hz high performance mode
    .fs_xl      = 0x01,     // +/- 16g
    .odr_g      = 0x07,     // 833 Hz high performance mode
    .fs_g       = 0x03,     // 2000 dps

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

// SD data file
extern File data_file;

int main() {
	init();
    
    Wire.begin();
    Serial.begin(9600);

    pinMode(SD_CS, OUTPUT);
    sd_init(SD_CS);
    sd_write_headers();

    nio_init(CLOSE_POS, CLOSE_NEG, OPEN_POS, OPEN_NEG);
    pinMode(LIMIT_OPEN, INPUT);
    pinMode(LIMIT_CLOSED, INPUT);

    imu_init(&imu);
    imu_whoami(&imu);

    gyro_init(&gyro);
    baro.connect();
    baro.ReadProm();
    
    long last_millis = 0;
    while (1) {
        nio_refresh();

        long timestamp = micros();
        imu_accel_read(&imu);
        imu_gyro_read(&imu);
        gyro_read(&gyro);
        float baro_pressure = baro.GetPres();
        float baro_temp = baro.GetTemp();

        analogSensors[0] = analogRead(PRESSURE_PIN) * PRESSURE_SCALE + PRESSURE_ADD;
        analogSensors[1] = analogRead(THERM1);
        analogSensors[2] = analogRead(THERM2);

        rlcs_data.pressure = analogSensors[0] > 0 ? analogSensors[0] : 0;
        rlcs_data.valve_limitswitch_open = !digitalRead(LIMIT_OPEN);
        rlcs_data.valve_limitswitch_closed = !digitalRead(LIMIT_CLOSED);
        
        if (millis() - last_millis > SENSOR_SEND_INTERVAL) {
            nio_send_sensor_data(&rlcs_data);
            last_millis = millis();
        }


        // snprintf is broken and life is hell
        float sensor_cluster_fuck[11] = {
            imu.accel_data[0], imu.accel_data[1], imu.accel_data[2],
            gyro.data[0], gyro.data[1], gyro.data[2], baro_pressure, baro_temp,
            analogSensors[0], analogSensors[1], analogSensors[2]
        };

        data_file.print(timestamp);
        for (int i = 0; i < sizeof(sensor_cluster_fuck) / sizeof(sensor_cluster_fuck[0]); i++) {
            data_file.print(", ");
            data_file.print(sensor_cluster_fuck[i]);
        }
        data_file.println();
        data_file.flush();
    }

    return 0;
}

