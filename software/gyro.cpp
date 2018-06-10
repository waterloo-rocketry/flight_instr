#include "Arduino.h"
#include "Wire.h"

#include "gyro.h"

int gyro_test_chipID(uint8_t addr) {
    Wire.beginTransmission(addr);
    Wire.write(GYRO_CHIPID_REG);
    Wire.endTransmission();

    Wire.requestFrom(addr, (uint8_t)1);
    while (!Wire.available());
    uint8_t chipID = Wire.read();

    return (chipID == 0xd5 ? 0 : -1);
}

/*
 * Set gyro filter and sample rate parameters
 * gyr_bwp = 0x2 -> normal mode
 * gyr_odr = 0xC -> 1.6 kHz sample rate
 * See datasheet for other values
 *
 * Returns error code -> 0 on successful config
 */
uint8_t gyro_init(uint8_t addr, uint8_t gyr_bwp, uint8_t gyr_odr, uint8_t gyr_range) {
    // set power mode to normal
    Wire.beginTransmission(addr);
    Wire.write(GYRO_CMD_REG);
    Wire.write(0x15);
    Wire.endTransmission();
    delay(1);


    uint8_t gyro_config = gyr_bwp << 4 | gyr_odr;
    Wire.beginTransmission(addr);
    Wire.write(GYRO_CONFIG_REG);
    Wire.write(gyro_config);
    Wire.endTransmission();
    delay(1);

    Wire.beginTransmission(addr);
    Wire.write(GYRO_RANGE_REG);
    Wire.write(gyr_range);
    Wire.endTransmission();
    delay(1);

    // check that there are no errors
    Wire.beginTransmission(addr);
    Wire.write(GYRO_ERR_REG);
    Wire.endTransmission();

    Wire.requestFrom(addr, (uint8_t)1);
    uint8_t err_code = Wire.read();
    Serial.print("error code: ");
    Serial.println(err_code, HEX);
    Serial.flush();
    return err_code;
}

/*
 *  Perform fast offset calibration
 */
void gyro_calibrate(uint8_t addr) {
    // test - what are the current factors?
}

/*
 * Read x, y, z rates and temperature
 * Currently print them out to screen. Eventually just populate an array.
 */
void gyro_read(uint8_t addr, gyro_readout_t *gyro_data) {
    // read gyroscopic data
    Wire.beginTransmission(addr);
    Wire.write(GYRO_DATA_BASE);
    Wire.endTransmission();

    uint8_t raw_readout[6] = {0};
    int i = 0;
    Wire.requestFrom(addr, (uint8_t)6);
    while (Wire.available()) {
        raw_readout[i++] = Wire.read();
    }

    // data is organized LSB first in 2's complement format
    // FIXME: get rid of hardcoded conversion
    gyro_data->x_rate = (int)((uint16_t)raw_readout[1] << 8 | raw_readout[0]) / 262.4;
    gyro_data->y_rate = (int)((uint16_t)raw_readout[3] << 8 | raw_readout[2]) / 262.4;
    gyro_data->z_rate = (int)((uint16_t)raw_readout[5] << 8 | raw_readout[4]) / 262.4;

    Serial.print("gyro: ");
    Serial.print(gyro_data->x_rate);
    Serial.print(" ");
    Serial.print(gyro_data->y_rate);
    Serial.print(" ");
    Serial.println(gyro_data->z_rate);
    Serial.flush();

    // read temperature
    Wire.beginTransmission(addr);
    Wire.write(GYRO_TEMP_REG);
    Wire.endTransmission();

    i = 0;
    Wire.requestFrom(addr, (uint8_t)2);
    while (Wire.available()) {
        raw_readout[i++] = Wire.read();
    }
    uint16_t raw_temp = (uint16_t)raw_readout[1] << 8 + raw_readout[0];
    gyro_data->temp = (raw_temp / 512.0) + 23;
}

