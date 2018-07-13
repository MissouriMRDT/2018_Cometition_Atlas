# BmsBoardSoftware
This is the software for Atlas' BMS. As of May 14, 2017, the following functionality is implemented:

-Measurement of pack current and voltage

-Measurement of cell voltages via an analog mux and opamp buffer

-Communication with power board and ultimately base station

-Overcurrent shutoff

-Manual fan and pack power control via base station

-Single-drop communication with and temperature readings from the DS18B20 one-wire temperature sensor

-Temperature sensing and temperature-based fan control

-Idle shutoff and Estop alarm   

TODO:

-Communication with indicator board

-----------------------------------------------------------------------------------------------------------------------------------------------------

To use this code, create a new project, add these files to the folder, and then set up the MSP432Ware paths for the linker and compiler respectively.

The setting for the compiler is found by right clicking the project and selecting properties -> ARM Compiler -> Include Options -> Add dir to #include search path.

The setting for the linker is also found in properties, under ARM Linker -> File Search Path.

To add the static library to the project, find msp432p4xx_driverlib.lib, right click the project, select "add files", then add the .lib file. 
If you did it correctly, it will appear in Linked Resources -> Linked Resources in project properties.

