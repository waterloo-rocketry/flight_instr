#include "Arduino.h"
#include "SPI.h"
#include "SD.h"

#include "sdlogger.h"

File data_file;

void sd_init(int chipSelect) {
    // debug
    Serial.println("initiallizing card");
    if (!SD.begin(chipSelect)) {
        Serial.println("card init failed");
        Serial.flush();
        while (1) {}    // debug
    } else {
        Serial.println("card init success");
    }
    Serial.flush();

    File root_file = SD.open("/");
    int file_count = 0;
    while (1) {
        File temp_file = root_file.openNextFile();
        if (temp_file) {
            file_count++;
            temp_file.close();
        } else {
            // out of files
            break;
        }
    }

    // 8.3 format names
    char file_name[13];
    sprintf(file_name, "%08i.txt", file_count);
    data_file = SD.open(file_name, FILE_WRITE);
}

void sd_write_headers() {
    data_file.println("Timestamp, imu_acc_x, imu_acc_y, imu_acc_z, imu_gyr_x, imu_gyr_y\
    imu_gyr_z, gyr_x, gyr_y, gyr_z, baro_press, baro_temp, pressure, temp1, temp2");
    data_file.flush();
}
