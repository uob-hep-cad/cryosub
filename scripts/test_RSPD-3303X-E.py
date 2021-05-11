#!/usr/bin/python3
import usbtmc
import time
# Get the handle
i = usbtmc.Instrument(0x0483, 0x7540)
# Get the ID string
i.write_raw(b"*IDN?")
time.sleep(0.1) # Muhahahaha
h = i.read_raw()
print("Our instrument identifies as:",h.decode("utf-8"))
# Set the channel
i.write_raw(b"INST CH2")
# Set output voltage and current limit
i.write_raw(b"VOLT 5.0 CH2")
i.write_raw(b"CURR 0.8 CH2")
# Turn the output on
print("Turning CH2 ON")
i.write_raw(b"OUTP CH2,ON")
time.sleep(1)
# Measure volts and amps
while True:
    i.write_raw(b"VOLT? CH2")
    time.sleep(0.1) # Muhahahaha
    print("Set voltage:", i.read_raw().decode("utf-8").strip())
    i.write_raw(b"MEAS:VOLT? CH2")
    time.sleep(0.1) # Muhahahaha
    print("Measured voltage:", i.read_raw().decode("utf-8").strip())
    i.write_raw(b"CURR? CH2")
    time.sleep(0.1) # Muhahahaha
    print("Set current:", i.read_raw().decode("utf-8").strip())
    i.write_raw(b"MEAS:CURR? CH2")
    time.sleep(0.1) # Muhahahaha
    print("Measured current:", i.read_raw().decode("utf-8").strip())
    time.sleep(1)



