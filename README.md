# flight_instr
This is the flight/engine instrumentation system used in Waterloo Rocketry's 2018 rocket, _Unexploded Ordnance (UXO)_. This repository tracks the hardware and software used in this system. The flight instrumentation PCB is a monolithic board containing an Arduino Nano, an SD card, a digital sensor suite, an analog sensor suite, a radio transceiver, and an H-bridge valve driver. Two copies of this board were used in UXO to successfully launch the rocket to 13000 ft.

This system is no longer in use. It has been replaced by RocketCAN, a collection of boards that implement the functionality of flight instrumentation in a modular manner. The new system is tracked in the `canhw`, `canlib`, and `cansw_*` repositories.

