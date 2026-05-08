# ALU FPGA - VHDL

Arithmetic Logic Unit (ALU) developed in VHDL for FPGA implementation using Intel Quartus Prime and ModelSim.

This project was created for digital systems and computer architecture studies, focusing on modular hardware design, arithmetic circuits, logical operations, overflow detection, and hardware verification through simulation.

---

# Overview

The project implements a modular 4-bit ALU architecture using structural and combinational VHDL design techniques.

The system includes arithmetic modules, logic components, comparison circuits, overflow detection, and automated testbenches for simulation and validation.

The project was synthesized and simulated using Intel FPGA development tools.

---

# Features

- 4-bit Arithmetic Logic Unit (ALU)
- Structural Full Adder implementation
- 4-bit Adder
- 2-bit Multiplier
- 4-bit Comparator
- Carry and Overflow detection
- Modular VHDL architecture
- Automated testbenches
- ModelSim waveform simulation
- FPGA-oriented implementation

---

# Technologies Used

- VHDL
- Intel Quartus Prime
- ModelSim Intel FPGA Edition
- FPGA Design
- Digital Logic Design

---

# Project Structure

```text
ALU_FPGA/
│
├── src/
│   ├── ALU.vhd
│   ├── adder_4_bits.vhd
│   ├── comparator_4_bits.vhd
│   ├── multiplier_2_bits.vhd
│   ├── full_adder.vhd
│   ├── general_adder.vhd
│   └── ...
│
├── testbench/
│   ├── adder_4_bits_tb.vhd
│   ├── comparator_4_bits_tb.vhd
│   ├── multiplier_tb.vhd
│   └── ...
│
├── docs/
│
├── README.md
└── .gitignore
```

---

# ALU Operations

| Opcode | Operation |
|---|---|
| 000 | NOP |
| 001 | Bitwise A AND B |
| 010 | Bitwise A OR B |
| 011 | NOT B |
| 100 | A + B |
| 101 | A - B |
| 110 | A * B |
| 111 | CMP A, B |

---

# Architecture

The project follows a modular hardware architecture approach.

Main modules:

- Full Adder
- 4-bit Adder
- Comparator
- Multiplier
- Top-Level ALU

The arithmetic circuits were implemented structurally to reinforce digital hardware concepts such as carry propagation and combinational datapaths.

---

# Simulation and Verification

The project was validated through automated VHDL testbenches using ModelSim.

Implemented simulations include:

- Exhaustive addition testing
- Carry-in validation
- Overflow verification
- Comparator verification
- Multiplier validation

The testbenches automatically iterate through multiple input combinations for functional verification.

---

# Hardware Concepts Applied

- Combinational Logic
- Structural VHDL
- Arithmetic Circuits
- Overflow Detection
- Carry Propagation
- Digital System Design
- FPGA Development Flow
- Hardware Simulation
- Waveform Analysis

---

# FPGA Development Flow

1. VHDL Design
2. Compilation using Quartus Prime
3. Functional Simulation using ModelSim
4. Waveform Validation
5. FPGA Synthesis

---

# Future Improvements

Planned future upgrades:

- Register-based datapath
- Control Unit (FSM)
- Internal bus architecture
- Status flags
- Clocked operations
- Instruction decoding
- Simple processor architecture

---

# Learning Objectives

This project was developed to improve knowledge in:

- Computer Architecture
- FPGA Design
- VHDL Development
- Hardware Verification
- Digital Electronics
- Simulation Methodologies

---

# Author

Eduardo Domingues Blanco

GitHub Repository:

https://github.com/Eduardoblanco18/ALU_FPGA

Contact: 

<div align="center">
  <a href="https://www.linkedin.com/in/nunes-andrade" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a>
<\div>