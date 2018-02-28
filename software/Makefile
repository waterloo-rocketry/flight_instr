PORT = /dev/cu.wchusbserial1410

CC = avr-gcc
CXX = avr-g++
HARDWARE = /Applications/Arduino.app/Contents/Java/hardware
DEFINES = -DF_CPU=16000000L -DARDUINO_ARCH_AVR

MICRO = -mmcu=atmega328p
CFLAGS = -std=gnu11 $(MICRO) $(DEFINES)
CXXFLAGS = -std=gnu++11 $(MICRO) $(DEFINES)
ELFFLAGS = -w -Os -flto -fuse-linker-plugin -Wl,--gc-sections,--relax -mmcu=atmega328p

INCLUDE += -I$(HARDWARE)/arduino/avr/cores/arduino
INCLUDE += -I$(HARDWARE)/arduino/avr/variants/eightanaloginputs
INCLUDE += -I$(HARDWARE)/arduino/avr/libraries/Wire
INCLUDE += -I$(HARDWARE)/arduino/avr/libraries/Wire/utility
INCLUDE += -I include/

VPATH += .
VPATH += $(HARDWARE)/arduino/avr/cores/arduino/
VPATH += $(HARDWARE)/arduino/cores/arduino/
VPATH += $(HARDWARE)/arduino/avr/libraries/Wire
VPATH += $(HARDWARE)/arduino/avr/libraries/Wire/utility


# Project source
default: build upload

upload:
	avrdude -V -F -p m328p -c arduino -b57600 -Uflash:w:main.hex -P$(PORT)

build: main.hex

main.hex: main.elf
	avr-objcopy -O ihex $< $@

#our source files
OBJECTS = main.o
main.elf: $(OBJECTS) lib
	$(CC) $(ELFFLAGS) -o $@ $(OBJECTS) libarduino.a -lm

# Arduino library compilation
# revise whether I need all of these
LIB_OBJ = wiring_pulse.o WInterrupts.o hooks.o wiring.o wiring_analog.o \
	wiring_digital.o wiring_shift.o CDC.o HardwareSerial.o HardwareSerial0.o \
	HardwareSerial1.o HardwareSerial2.o HardwareSerial3.o IPAddress.o \
	Print.o Stream.o Tone.o USBCore.o WMath.o WString.o abi.o Wire.o twi.o

lib: $(LIB_OBJ)
	-rm libarduino.a
	avr-ar rcs libarduino.a $^


%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c $< -o $@

clean:
	-rm *.o
	-rm *.hex
	-rm *.elf
	-rm libarduino.a

