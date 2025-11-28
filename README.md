# Basic Gates VLSI Design Project

This project demonstrates the design and simulation of basic logic gates (AND, OR, NOT, NAND, NOR, XOR, XNOR) using Verilog in a VLSI design context. The gates are implemented using the **dataflow modeling style** in Verilog, and the project also includes simulation results, waveforms, schematic diagrams, and gate-level schematics to verify the functionality of each gate.

## Table of Contents
- [Introduction](#introduction)
- [Project Structure](#project-structure)
- [Design and Implementation](#design-and-implementation)
- [Simulation](#simulation)
- [Files Overview](#files-overview)
- [How to Use](#how-to-use)
- [Dependencies](#dependencies)
- [License](#license)

## Introduction

This repository contains a set of Verilog modules that implement basic logic gates using the **dataflow modeling** style. The gates are tested through comprehensive simulation, and the project includes waveforms, schematic diagrams, and gate-level schematics to verify the correct functionality of the design.

## Project Structure

The project is organized as follows:

- `src/rtl/`: Contains the Verilog code for the basic gates.
    - **`allgates.v`**: The Verilog module file where all the basic gates (AND, OR, NOT, NAND, NOR, XOR, XNOR) are implemented using the **dataflow model**.
    
- `sim/`: Contains all simulation-related files.
    - `testbench/`: Contains the Verilog testbench code to simulate and verify the gate modules.
    - **`allgates_tb.v`**: The testbench file that applies test vectors to the gates in `allgates.v` and verifies their functionality.
    - `result/images/`: Contains the images for the simulation results:
        - **waveform.png**: A screenshot of the waveform generated during the simulation.
        - **schematic.png**: A schematic diagram of the gate-level design.
        - **gatelevelschematic.png**: A gate-level schematic representation of the design.

## Design and Implementation

### Verilog Modules

The basic gates are implemented in the `src/rtl/allgates.v` file using the **dataflow modeling** style of Verilog. Each gate is defined with the corresponding logic equation, making use of Verilog's built-in operators to model the functionality.

- **AND Gate**: `assign out = in1 & in2;`
- **OR Gate**: `assign out = in1 | in2;`
- **NOT Gate**: `assign out = ~in1;`
- **NAND Gate**: `assign out = ~(in1 & in2);`
- **NOR Gate**: `assign out = ~(in1 | in2);`
- **XOR Gate**: `assign out = in1 ^ in2;`
- **XNOR Gate**: `assign out = ~(in1 ^ in2);`

The dataflow model is used here to make the design simple and concise while ensuring the correct behavior of each gate.

### Testbenches

The testbenches are written in the `sim/testbench` directory and are responsible for simulating the gates with all possible input combinations to verify correctness. The primary testbench is **`allgates_tbb.v`**, which applies input values to the gates in `allgates.v` and checks the outputs against the expected results.

### Simulation Results

Simulation results are stored in the `sim/result/images/` directory and include:
- **Waveform**: The waveform generated during the simulation that shows the signal transitions for each gate's output.
  ![Waveform](sim/result/images/waveform.png)
- **Schematic**: A general schematic representation of the gate-level design.
  ![Schematic](sim/result/images/schematic.png)
- **Gate-level Schematic**: A more detailed gate-level schematic showing the logic gates in their implemented form.
  ![Gate-level Schematic](sim/result/images/gatelevelschematic.png)

## Files Overview

Here’s a brief overview of the files in the repository:

### `src/rtl/`
- **`allgates.v`**: Verilog module that contains the implementation of all basic gates using the dataflow model.

### `sim/`
- **`testbench/`**: Contains the testbench files for simulating the basic gates. For example:
    - **`allgates_tbb.v`**: Testbench to simulate the gates in `allgates.v`.
    
- **`result/images/`**: Contains the images of the simulation results:
    - **`waveform.png`**: A screenshot of the waveform of the simulation.
    - **`schematic.png`**: The schematic diagram of the design.
    - **`gatelevelschematic.png`**: The gate-level schematic of the design.

## How to Use

### Requirements

To run the simulation, you will need **QuestaSim** (or **ModelSim**, which is the same simulator suite):
- [QuestaSim](https://www.mentor.com/products/fpga/questasim) or [ModelSim](https://www.mentor.com/products/fpga/modelsim)


### Viewing the Simulation Results

You can view the simulation waveform and other images in the `sim/result/images/` directory, such as:
- **`waveform.png`**: View the signal transitions for each gate's output.
- **`schematic.png`**: View the schematic diagram of the gate-level design.
- **`gatelevelschematic.png`**: View the gate-level schematic representation of the design.

## Dependencies

- **QuestaSim** or **ModelSim** (for simulation)
- Text editor for Verilog code (Visual Studio Code, Sublime Text, etc.)

## License

This project is open-source and available under the [MIT License](LICENSE).
