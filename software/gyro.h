// Driver for the BMG250 gyroscope

#define GYRO_CHIPID_REG 0x0
#define GYRO_ERR_REG 0x02
#define GYRO_DATA_BASE 0x12
#define GYRO_TEMP_REG 0x20
#define GYRO_CONFIG_REG 0x42
#define GYRO_RANGE_REG 0x43
#define GYRO_CMD_REG 0x7e

typedef struct gyro {
    uint8_t addr;

    // init params
    uint8_t gyr_bwp;
    uint8_t gyr_odr;
    uint8_t gyr_range;
    float scale;

    // in degrees / second
    float data[4];
} gyro_t;

int gyro_test_chipID(gyro_t *gyro);
uint8_t gyro_init(gyro_t *gyro);

void gyro_calibrate(gyro_t *gyro);
void gyro_read(gyro_t *gyro);

