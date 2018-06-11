// Driver for the LSM6DS3HTR gyroscope/accelerometer IMU
// Currently WIP

#include "Arduino.h"
#include "Wire.h"
#include "IMU.h"

// see datasheet for odr and fs values
void imu_init(imu_t *imu) {
    // TODO - check wire write sequence
    // check that the registers have been properly set in the end
    Serial.println("imu init");
    
    // configure accelerometer
    Wire.beginTransmission(imu->imu_addr);
    Wire.write(CTRL1_XL);
    Wire.write(imu->odr_xl << 4 | imu->fs_xl << 2);
    Wire.endTransmission();

    // configure gyroscope
    Wire.beginTransmission(imu->imu_addr);
    Wire.write(CTRL2_G);
    Wire.write(imu->odr_g << 4 | imu->fs_g << 2);
    Wire.endTransmission();
}

static int16_t read_signed_dword(uint8_t imu_addr, uint8_t reg_addr) {
    Wire.beginTransmission(imu_addr);
    Wire.write(reg_addr);
    Wire.endTransmission();

    // registers are organized with LOW byte first, then HIGH byte in 2's complement format
    uint8_t bytes_raw[2] = {0, 0};
    Wire.requestFrom(imu_addr, 2);
    int i = 0;
    while (Wire.available()) {
        bytes_raw[i++] = Wire.read();
    }
    return (bytes_raw[0] << 8 | bytes_raw[1]);
}

void imu_accel_read(imu_t *imu) {
    imu->accel_data[0] = read_signed_dword(imu->imu_addr, OUTX_L_XL) * 0.00478728;
    imu->accel_data[1] = read_signed_dword(imu->imu_addr, OUTY_L_XL) * 0.00478728;
    imu->accel_data[2] = read_signed_dword(imu->imu_addr, OUTZ_L_XL) * 0.00478728;

    // debug
    for (int i = 0; i < 3; i++)  {
        Serial.print(imu->accel_data[i]);
        Serial.print(" ");
    }
    Serial.println();
}

void imu_gyro_read(imu_t *imu) {
    imu->gyro_data[0] = read_signed_dword(imu->imu_addr, OUTX_L_G);
    imu->gyro_data[1] = read_signed_dword(imu->imu_addr, OUTY_L_G);
    imu->gyro_data[2] = read_signed_dword(imu->imu_addr, OUTZ_L_G);

    // debug
    for (int i = 0; i < 3; i++)  {
        Serial.print(imu->gyro_data[i]);
        Serial.print(" ");
    }
    Serial.println();

}

