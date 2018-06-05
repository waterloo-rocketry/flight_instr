### README ###

To build, run:

`make NODE=-DNODE_VENT` or `make NODE=-DNODE_INJ` depending on whether you want
to build the code for the board in the vent or injector section. One and only
one of these should be defined at all times. Make clean before switching
targets.

This changes the behaviour of the RLCS dependency and of some sensors.
