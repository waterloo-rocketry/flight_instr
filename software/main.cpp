#include "Arduino.h"
#include "Wire.h"

#define DAC_BROADCAST 0x48
#define DAC_LOW 0x4C
#define DAC_HIGH 0x4D

// DAC expects instructions in the form of 2 bytes as follows:
// MS byte: 0 0 PD1 PD0 D7 D6 D5 D4
// LS byte: D3 D2 D1 D0 x x x x
char dac_write(uint8_t address, uint8_t level) {
    Wire.beginTransmission(address);
    // normal operation (no power down) + upper data bits
    Wire.write(level >> 4);
    // lower data bits
    Wire.write(level << 4);
    return Wire.endTransmission();
}

int main() {
	init();

    Serial.begin(9600);

    Wire.begin();
    dac_write(DAC_LOW, 0x20);
    dac_write(DAC_HIGH, 0x5f);

    pinMode(11, OUTPUT);
    pinMode(12, OUTPUT);

    // DAC and linear actuator sanity check
    uint8_t dac_level = 0;
    while (1) {
        // DAC write protocol
        /*
        dac_write(DAC_LOW, dac_level);
        dac_write(DAC_HIGH, dac_level);
        dac_level += 10;
        if (dac_level >= 255) { dac_level = 0; }
        */

        // Linear Actuator Demo
        /*
        digitalWrite(11, LOW);
        digitalWrite(12, LOW);
        delay(1000);
        */

        digitalWrite(11, LOW);
        digitalWrite(12, HIGH);
        delay(10000);

        /*
        digitalWrite(11, HIGH);
        digitalWrite(12, HIGH);
        delay(1000);
        */

        digitalWrite(11, HIGH);
        digitalWrite(12, LOW);
        delay(10000);
    }
	return 0;

}

