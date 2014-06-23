EPROMburner
===========

This is an EPROM burner made to read and write the M27C160 series chips. It
could easily be adapted for other EPROMS using their datasheets. Burn time is
~3 minutes.

The main microcontroller is a Teensy++ 2.0 but the circuit may be adapted for
any other arduino based board with enough pins. The SD card reader is an SDRAMPS
board normally used for 3d printers(schematics included).

Usage is fairly straight forward. Open a serial terminal at 9600 baud to use the
interactive menu. To change the ERPOM size, edit the defined value in eprom.h.
When switching betweeen READ and PROGRAM modes, I suggest disconnecting the
power to the device before changing the jumpers. Even though the program
verifies each byte during the programming cycle, you may want to read to SD and
do a manual comparison afterwards.

Note that you will need a UVC source to erase the chips. The device at
http://www.amazon.com/gp/product/B00134J08A/ works great with a 10 minute
exposure time.