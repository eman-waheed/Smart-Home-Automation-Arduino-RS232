Smart Home Automation System using Arduino Uno and RS232

Overview
This project demonstrates a Smart Home Automation System where devices (represented by LEDs) 
are controlled via serial input using Arduino Uno and RS232 communication. 
Additionally, an 8086 Assembly simulation is implemented in EMU8086 to replicate the same control logic. 
The project integrates both hardware and simulation for learning microcontrollers and system automation.

Objectives
- Control home appliances (2 devices) using Arduino and Assembly simulation
- Demonstrate serial communication via RS232
- Provide ON/OFF control with real-time feedback
- Integrate hardware and emulator for testing

Features
- Device ON/OFF using serial commands:
  - 'A' → Turn ON LED1
  - 'a' → Turn OFF LED1
  - 'B' → Turn ON LED2
  - 'b' → Turn OFF LED2
- Feedback messages when devices are already in the requested state
- RS232-based serial communication
- EMU8086 Assembly simulation for the same logic

Components Required
- Arduino Uno
- Breadboard
- 2 LEDs with resistors (220–330Ω)
- MAX232 IC and capacitors
- USB to RS232 converter
- Jumper wires
- Arduino USB cable

Working Principle
- Arduino listens to serial input (A/a, B/b)
- Corresponding LED toggles ON/OFF
- Feedback message sent to serial monitor
- 8086 Assembly program mimics same functionality via EMU8086

Code Files
- ArduinoCode.ino : Arduino Uno program for LED control via RS232
- AssemblyCode.asm : 8086 Assembly code for EMU8086 simulation
- Report.pdf : Complete project documentation
- Presentation.pdf : Project presentation slides (if available)

Applications
- Smart lighting systems
- Basic home/office automation
- Foundation for IoT-based applications

Future Enhancements
- Add automation with sensors (temperature, motion, light)
- Mobile app or Bluetooth/Wi-Fi control
- Voice assistant integration (Alexa, Google Assistant)
