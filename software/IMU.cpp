// Driver for the LSM6DS3HTR gyroscope/accelerometer IMU
// Currently WIP

#include "Arduino.h"
#include "Wire.h"
#include "IMU.h"

// see datasheet for odr and fs values
void imu_init(char imu_addr, char odr_xl, char fs_xl, char odr_g, char fs_g) {
    // TODO - check wire write sequence
    // check that the registers have been properly set in the end
    Serial.println("imu init");
    
    // configure accelerometer
    Wire.beginTransmission(imu_addr);
    Wire.write(CTRL1_XL);
    Wire.write(odr_xl << 4 | fs_xl << 2);
    Wire.endTransmission();

    // configure gyroscope
    Wire.beginTransmission(imu_addr);
    Wire.write(CTRL2_G);
    Wire.write(odr_g << 4 | fs_g << 2);
    Wire.endTransmission();
}

static int16_t read_data_word(char imu_addr, char reg_addr) {
    Wire.beginTransmission(imu_addr);
    Wire.write(reg_addr);
    Wire.endTransmission();

    // registers are organized with LOW byte first, then HIGH byte
    char bytes_raw[2] = {0, 0};
    Wire.requestFrom(imu_addr, 2);
    int i = 0;
    while (Wire.available()) {
        bytes_raw[i++] = Wire.read();
    }
    return (bytes_raw[0] << 8 | bytes_raw[1]);
}

void imu_accel_read(char imu_addr, float *accel_out) {
    // FIXME: currently assuming that full scale is +/- 16g
    accel_out[0] = (float)read_data_word(imu_addr, OUTX_L_XL) * 0.488 / 1000;
    accel_out[1] = (float)read_data_word(imu_addr, OUTY_L_XL) * 0.488 / 1000;
    accel_out[2] = (float)read_data_word(imu_addr, OUTZ_L_XL) * 0.488 / 1000;

    // debug
    for (int i = 0; i < 3; i++)  {
        Serial.print(accel_out[i]);
        Serial.print(" ");
    }
    Serial.println();
}

void imu_gyro_read(char imu_addr, float* gyro_out) {
    // FIXME: currently assuming that full scale is +/- 2000 dps
    gyro_out[0] = (float)read_data_word(imu_addr, OUTX_L_G) * 70 / 1000;
    gyro_out[1] = (float)read_data_word(imu_addr, OUTY_L_G) * 70 / 1000;
    gyro_out[2] = (float)read_data_word(imu_addr, OUTZ_L_G) * 70 / 1000;

    // debug
    for (int i = 0; i < 3; i++)  {
        Serial.print(gyro_out[i]);
        Serial.print(" ");
    }
    Serial.println();

}

void imu_read_all(char imu_addr) {
}

