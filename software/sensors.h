// Sensor interfaces (digital and analog)

#define BAROMETER_ADDR 0x76
#define GYRO_ADDR 0x68
#define IMU_ADDR 0x6A

uint16_t barom_calib_coeff[6];
void barom_read_calib();        // read calibration data from sensor PROM
int32_t barom_read_temp();      // read and convert temperature data
int32_t barom_read_pressure();  // read and convert pressure data

