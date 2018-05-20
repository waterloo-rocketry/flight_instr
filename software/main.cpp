#include "Arduino.h"
#include "Wire.h"

#include "nodeio.ioio.h"
#include "sensors.h"

int main() {
	init();

    Wire.begin();
    Serial.begin(9600);
    Serial.println("start");

    nio_init(2, 3);
    while (1) {
        nio_refresh();
    }
}

