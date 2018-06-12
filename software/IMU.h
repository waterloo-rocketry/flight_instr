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

#define XL_FS_2        (0.061 / 1000.0 * 9.81)
#define XL_FS_4        (0.122 / 1000.0 * 9.81)
#define XL_FS_8        (0.244 / 1000.0 * 9.81)
const float XL_FS_16  = (0.488 / 1000.0 * 9.81);

#define G_FS_125        (4.375 / 1000)
#define G_FS_250        (8.75 / 1000)
#define G_FS_500        (17.50 / 1000)
#define G_FS_1000       (35.0 / 1000)
const float G_FS_2000        = (70.0 / 1000);

typedef struct imu {
    uint8_t imu_addr;

    // initiallization parameters
    uint8_t odr_xl;     // accelerometer ODR
    uint8_t fs_xl;      // accelerometer full scale range
    uint8_t odr_g;      // gyroscope ODR
    uint8_t fs_g;       // gyroscope full scale range

    // data conversion parameters
    float scale_xl;     // conversion factor: LSB -> m^2/s
    float scale_g;      // conversion factor: LSB -> degrees/second

    // data
    uint16_t accel_data[3];
    uint16_t gyro_data[3];
} imu_t;

// This driver uses the Wire arduino library to communicate over I2C. 
// Wire must be initialized before calling any of these functions.
void imu_init(imu_t *imu);
void imu_accel_read(imu_t *imu);
void imu_gyro_read(imu_t *imu);

