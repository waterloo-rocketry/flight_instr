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
uint8_t gyro_init(gyro_t *gyro) {
    // set power mode to normal
    Wire.beginTransmission(gyro->addr);
    Wire.write(GYRO_CMD_REG);
    Wire.write(0x15);
    Wire.endTransmission();
    delay(1);

    uint8_t gyro_config = gyro->gyr_bwp << 4 | gyro->gyr_odr;
    Wire.beginTransmission(gyro->addr);
    Wire.write(GYRO_CONFIG_REG);
    Wire.write(gyro_config);
    Wire.endTransmission();
    delay(1);

    Wire.beginTransmission(gyro->addr);
    Wire.write(GYRO_RANGE_REG);
    Wire.write(gyro->gyr_range);
    Wire.endTransmission();
    delay(1);

    // check that there are no errors
    Wire.beginTransmission(gyro->addr);
    Wire.write(GYRO_ERR_REG);
    Wire.endTransmission();

    Wire.requestFrom(gyro->addr, (uint8_t)1);
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
void gyro_read(gyro_t *gyro) {
    // read gyroscopic data
    Wire.beginTransmission(gyro->addr);
    Wire.write(GYRO_DATA_BASE);
    Wire.endTransmission();

    uint8_t raw_readout[6] = {0};
    int i = 0;
    Wire.requestFrom(gyro->addr, (uint8_t)6);
    while (Wire.available()) {
        raw_readout[i++] = Wire.read();
    }

    // data is organized LSB first in 2's complement format
    // FIXME: get rid of hardcoded conversion
    gyro->data[0] = (int)((uint16_t)raw_readout[1] << 8 | raw_readout[0]) / gyro->scale;  // x rate
    gyro->data[1] = (int)((uint16_t)raw_readout[3] << 8 | raw_readout[2]) / gyro->scale;  // y rate
    gyro->data[2] = (int)((uint16_t)raw_readout[5] << 8 | raw_readout[4]) / gyro->scale;  // z rate

    Serial.print("gyro: ");
    Serial.print(gyro->data[0]);
    Serial.print(" ");
    Serial.print(gyro->data[1]);
    Serial.print(" ");
    Serial.println(gyro->data[2]);
    Serial.flush();

    // read temperature
    Wire.beginTransmission(gyro->addr);
    Wire.write(GYRO_TEMP_REG);
    Wire.endTransmission();

    i = 0;
    Wire.requestFrom(gyro->addr, (uint8_t)2);
    while (Wire.available()) {
        raw_readout[i++] = Wire.read();
    }
    uint16_t raw_temp = (uint16_t)raw_readout[1] << 8 + raw_readout[0];
    gyro->data[3]= (raw_temp / 512.0) + 23;
}

