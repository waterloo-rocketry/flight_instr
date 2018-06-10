// Driver for the BMG250 gyroscope
// WIP - will need major cleanup

#define GYRO_CHIPID_REG 0x0
#define GYRO_ERR_REG 0x02
#define GYRO_DATA_BASE 0x12
#define GYRO_TEMP_REG 0x20
#define GYRO_CONFIG_REG 0x42
#define GYRO_RANGE_REG 0x43
#define GYRO_CMD_REG 0x7e

// TODO: store conversion factors and whatnot
// currently things are all over the place
typedef struct gyro_readout {
    // in degrees / second
    float x_rate;
    float y_rate;
    float z_rate;
    float temp;
} gyro_readout_t;

int gyro_test_chipID(uint8_t addr);
uint8_t gyro_init(uint8_t addr, uint8_t gyr_bwp, uint8_t gyr_odr, uint8_t gyr_range);

void gyro_calibrate(uint8_t addr);
void gyro_read(uint8_t addr, gyro_readout_t *data);

