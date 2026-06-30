# Vending Machine FSM using Verilog HDL

## Overview

This project implements a simple Moore Finite State Machine (FSM) based vending machine in Verilog HDL.

The vending machine accepts:

* ₹5 coin
* ₹10 coin

The product price is ₹10.

The FSM releases the product when sufficient money is received.

---

# FSM States

| State    | Meaning           |
| -------- | ----------------- |
| S0       | No money inserted |
| S5       | ₹5 inserted       |
| DISPENSE | Product released  |

---

# FSM Working

## Case 1 : ₹5 + ₹5

```text
S0 -> S5 -> DISPENSE -> S0
```

## Case 2 : Direct ₹10

```text
S0 -> DISPENSE -> S0
```

---

# Concepts Learned

* Moore FSM
* State transitions
* Sequential vs combinational logic
* Current state vs next state
* State holding
* Asynchronous reset
* Latch prevention
* Default assignments
* Moore output logic
* Clock-based FSM behavior
* Timing analysis
* Waveform understanding
* Beginner-friendly testbench design
* Synchronized stimulus generation
* FSM debugging and corner cases

---

# Project Files

| File          | Description                    |
| ------------- | ------------------------------ |
| `VM_fsm.v`    | Vending Machine FSM RTL Design |
| `VM_fsm_tb.v` | Testbench for simulation       |

---

# RTL Design Features

* Moore FSM architecture
* Clean state transition logic
* Proper sequential and combinational block separation
* Safe reset behavior
* Synthesizable Verilog RTL
* Beginner-friendly coding style

---

# Testbench Features

The testbench verifies:

* ₹5 + ₹5 transaction
* Direct ₹10 transaction
* Reset behavior
* Proper dispense output
* Clock synchronized stimulus

---

# Simulation

Waveforms generated using:

```verilog
$dumpfile("dump.vcd");
$dumpvars(0, testbench);
```

Simulation can be viewed using GTKWave.

---

# Tools Used

* Verilog HDL
* EDA Playground
* GTKWave

---

# Author

Naman Gupta
