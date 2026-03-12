# Brick Breaker on FPGA

A hardware-accelerated implementation of the classic Brick Breaker game on the **Xilinx ZedBoard**, combining custom VHDL IP with dual-core ARM software.

---

## Overview

This project runs entirely on the ZedBoard's Zynq-7000 SoC, splitting workload across two ARM Cortex-A9 cores:

- **Core 0** — VGA display controller, game rendering, ball/paddle physics
- **Core 1** — Audio codec, sound effects

A custom **True Random Number Generator (TRNG) IP core** written in VHDL is integrated into the design to randomize brick layouts and game behavior.

---

## Key Technical Features

- **Custom VHDL IP Core** — Ring Oscillator-based TRNG implemented in hardware, integrated via Xilinx Vivado IP packager
- **Dual-core ARM** — AMP (Asymmetric Multiprocessing) design with dedicated cores for display and audio
- **VGA Controller** — Custom pixel generation for game graphics output
- **Audio Codec** — Real-time sound effects via I2S audio codec on the ZedBoard
- **Hardware/Software Co-design** — VHDL for the TRNG IP, C++ for game logic running on ARM

---

## System Architecture

```
Zynq-7000 SoC
├── PL (Programmable Logic)
│   └── Ring Oscillator TRNG IP Core (VHDL)
└── PS (Processing System)
    ├── ARM Core 0 → VGA Controller + Game Physics (C++)
    └── ARM Core 1 → Audio Codec / Sound Effects (C++)
```

---

## Hardware

| Component | Details |
|---|---|
| Board | Xilinx ZedBoard (Zynq-7000) |
| FPGA Fabric | Artix-7 (PL side) |
| Processor | Dual-core ARM Cortex-A9 (PS side) |
| Display | VGA output |
| Audio | ADAU1761 audio codec (I2S) |

---

## Tools

| Tool | Purpose |
|---|---|
| Xilinx Vivado | FPGA synthesis, IP integration, bitstream generation |
| Xilinx Vitis | ARM C++ application development |
| VHDL | TRNG IP core design and simulation |
| C++ | Game logic, VGA controller, audio driver |

---

## TRNG Implementation

The random number generator uses a **Ring Oscillator** method — a chain of inverters that oscillates at a frequency sensitive to physical process variation and thermal noise. The oscillation is sampled to extract entropy, producing true (non-deterministic) random bits. This is implemented as a custom IP core and connected to the ARM processor via AXI bus.

---

## Author

**Gene Li, EIT** — Mechatronic Systems Engineer  
MASc, Simon Fraser University  
[GitHub](https://github.com/gl35)
