// Driver for the LSM6DS3HTR gyroscope/accelerometer IMU
// Currently WIP

// Device Register Addresses
#define ORIENT_CFG_G    0x0b    // axis orientation config
#define CTRL1_XL        0x10    // accelerometer config
#define CTRL2_G         0x11    // gyroscope config
#define STATUS_REG      0x1e    // data ready status

#define OUTX_L_G        0x22    // gyroscope outputs
#define OUTX_H_G        0x23
#define OUTY_L_G        0x24
#define OUTY_H_G        0x25
#define OUTZ_L_G        0x26
#define OUTZ_H_G        0x27

#define OUTX_L_XL       0x28    // accelerometer outputs
#define OUTX_H_XL       0x29
#define OUTY_L_XL       0x2a
#define OUTY_H_XL       0x2b
#define OUTZ_L_XL       0x2c
#define OUTZ_H_XL       0x2d

// This driver uses the Wire arduino library to communicate over I2C. 
// Wire must be initialized before calling any of these functions.
void imu_init(char imu_addr, char odr_xl, char fs_xl, char odr_g, char fs_g);
void imu_accel_read(char imu_addr, float *accel_out);
void imu_gyro_read(char imu_addr, float *gyro_out);
void imu_read(char imu_addr);

