# PYNQ-Z2 Verilog Experiments

This repository contains my FPGA and Verilog HDL experiments developed on the PYNQ-Z2 board using Vivado during Summer learning and exploration.

## Hardware Used
- PYNQ-Z2 FPGA Board
## Software Used
- Vivado Design Suite

## Repository Contents
This repository may contain:
- Verilog source files (`.v`)
- Constraint files (`.xdc`)
- Bitstream files (`.bit`)
- Vivado project files
- Experimental FPGA designs
- Timing-based LED demonstrations
- FSM implementations
- Clock generation/divider circuits

## Current Experiments

### 1. FPGA Clock Divider Demo | 8Hz, 4Hz, 2Hz, 1Hz LED Blinking
Implemented a multi-frequency clock divider on the PYNQ-Z2 FPGA using Verilog HDL to generate 8Hz, 4Hz, 2Hz, and 1Hz LED blinking outputs from the onboard clock.  
Demo Video: https://youtu.be/9iJLmOGcu3w?si=eMR-Ld4zrQLLXrDq

### 2. RGB LED Finite State Machine (FSM)
Implemented an RGB LED FSM on the PYNQ-Z2 FPGA using Verilog HDL with sequential RGB color transitions and switch-based reset functionality.  
Demo Video: https://youtu.be/zX5nCW47iZw?si=-GMuycOAhsKgugid


## Learning Goals
Through these experiments, I am exploring:
- FPGA architecture
- RTL design methodology
- Hardware timing behavior
- Synchronous digital design
- FPGA toolchain flow
- Real hardware implementation and debugging
