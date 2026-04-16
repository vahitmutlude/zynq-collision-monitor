# zynq-collision-monitor

> **HW/SW Co-Simulation of a Radar Collision Monitor on Zynq-7000 SoC**  
> Built without physical hardware — using Virtual Prototyping to meet industry-grade verification standards.

[![VHDL](https://img.shields.io/badge/RTL-VHDL-blue?style=flat-square)](https://en.wikipedia.org/wiki/VHDL)
[![SystemVerilog](https://img.shields.io/badge/Testbench-SystemVerilog-blueviolet?style=flat-square)](https://en.wikipedia.org/wiki/SystemVerilog)
[![MATLAB](https://img.shields.io/badge/Data-MATLAB-orange?style=flat-square)](https://www.mathworks.com/products/matlab.html)
[![Vivado](https://img.shields.io/badge/Toolchain-Vivado-red?style=flat-square)](https://www.xilinx.com/products/design-tools/vivado.html)
[![AXI4-Lite](https://img.shields.io/badge/Bus-AXI4--Lite-green?style=flat-square)](https://developer.arm.com/documentation/ihi0022/latest/)
[![Platform](https://img.shields.io/badge/Target-Zynq--7000-lightgrey?style=flat-square)](https://www.xilinx.com/products/silicon-devices/soc/zynq-7000.html)

---

## Overview

This project demonstrates a full **HW/SW co-simulation pipeline** for a radar-based collision monitor, targeting the Xilinx Zynq-7000 SoC — designed and validated entirely in simulation without physical hardware access.

Rather than the conventional "write VHDL and move on" approach, this project builds a four-stage industrial verification architecture:

1. **MATLAB** — Realistic radar sensor simulation with Gaussian noise and fixed-point quantization
2. **VHDL RTL** — Resource-optimized Moving Average Filter + Decision Guard (Custom IP)
3. **AXI4-Lite SoC integration** — Custom IP packaged as an AXI4-Lite Slave in Vivado Block Design
4. **SystemVerilog + Zynq VIP** — Virtual ARM processor drives the AXI bus to simulate real PS↔PL communication

**Core function:** Process noisy radar distance data, filter it via a DSP-efficient pipeline, and trigger a hardware alarm with microsecond precision when a critical proximity threshold is crossed.

---

## System Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                         Zynq-7000 SoC (Simulated)                       │
│                                                                         │
│   ┌──────────────────────────────────────────────────────────────────┐  │
│   │             Processing System (PS) — Zynq VIP                    │  │
│   │           ARM Cortex-A9 (Virtual) via SystemVerilog              │  │
│   │                    AXI4-Lite Master                              │  │
│   └─────────────────────────┬────────────────────────────────────────┘  │
│                             │ AXI4-Lite                                 │
│                    ┌────────▼──────────┐                                │
│                    │  AXI SmartConnect │                                │
│                    └────────┬──────────┘                                │
│                             │                                           │
│   ┌─────────────────────────▼────────────────────────────────────────┐  │
│   │           Programmable Logic (PL) — collision_monitor IP         │  │
│   │                                                                  │  │
│   │   slv_reg0 [0x00] ──► Moving Average Filter ──► Decision Guard   │  │
│   │   (Distance In)        (4-stage shift reg,        (Alarm_o)      │  │
│   │                         bit-shift ÷4)                            │  │
│   │   slv_reg1 [0x04] ◄── Alarm Status                               │  │
│   └──────────────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────────────┘
         ▲
         │ noisy_distance_data.txt (hex)
┌────────┴────────────┐
│   MATLAB Simulation │
│  Gaussian noise +   │
│  fixed-point quant. │
└─────────────────────┘
```

**AXI Register Map:**

| Offset | Register   | Direction | Description           |
|--------|------------|-----------|-----------------------|
| `0x00` | `slv_reg0` | Write     | Radar distance input  |
| `0x04` | `slv_reg1` | Read      | Alarm output status   |

---

## Tools & Dependencies

| Layer         | Tool / Technology         | Version / Notes                          |
|---------------|---------------------------|------------------------------------------|
| Simulation    | MATLAB                    | R2024a — data generation & quantization  |
| RTL Design    | VHDL (IEEE 1076-2008)     | Vivado-synthesizable subset              |
| Verification  | SystemVerilog (IEEE 1800) | Zynq VIP testbench                       |
| SoC Design    | Xilinx Vivado             | 2023.2                                   |
| IP Packaging  | Vivado IP Packager        | AXI4-Lite Slave wrapper auto-generated   |
| VIP           | Xilinx Zynq-7000 VIP      | `processing_system7_vip_v1_0`            |
| Target SoC    | Zynq-7000 (xc7z020)       | Validated on PYNQ-Z2 / Zybo pinout       |

---

## Results

All four verification phases passed. Key findings:

### Phase 1 — Power-on Reset & Warm-up Fix

**Problem:** At simulation start, AXI bus initialization causes the filter pipeline to contain `0x0000` (0 cm), which incorrectly triggers a collision alarm — a false positive.

**Root cause & fix:** Instead of patching RTL logic, VHDL filter registers were initialized to `(others => '1')` (safe maximum distance), and a **200 ns warm-up period** was inserted in the SystemVerilog testbench before any AXI transactions begin. The system stabilizes before tests run.

### Phase 2 — Nominal Case

Safe distances (3000, 4000, 5000) were injected via the virtual ARM processor. `Alarm_o` remained `0` in all cases — no false positives.

### Phase 3 — Boundary / Corner Case

The exact threshold value of `2000` was injected to probe `<=` vs `<` logic boundary behavior. The system correctly returned `Alarm_o = 0`, confirming the boundary condition is handled as `<` (strict less-than).

### Phase 4 — Danger & Recovery

```
Inject 1500  → Alarm_o = 1  ✓  (Collision danger detected)
Inject 3141  → Alarm_o = 0  ✓  (System fully recovered)
```

The system correctly transitions back to safe state — no latch-up or stuck fault. (3141 was chosen as an easter egg to π :) )

---

## File Structure

```
zynq-collision-monitor/
│
├── matlab/
│   └── noisy_distance_generator.m      # Radar sensor simulation, fixed-point export
│
├── rtl/
│   ├── collision_monitor.vhd           # Top-level module
│   ├── moving_average_filter.vhd       # 4-stage shift register + bit-shift ÷4
│   └── decision_guard.vhd             # Threshold comparator, Alarm_o output
│
├── sim/
│   ├── tb_sensor_reader.vhd            # Offline VHDL testbench (pre-AXI verification)
│   └── tb_zynq_vip.sv                  # SystemVerilog + Zynq VIP (full SoC simulation)
│
├── vivado/
│   ├── ip/                             # Packaged AXI4-Lite Custom IP
│   └── block_design/                  # Zynq PS + AXI SmartConnect + collision_monitor
│
├── data/
│   ├── noisy_distance_data.txt         # MATLAB-generated hex input stimulus
│   └── hw_results.txt                  # VHDL datalogger output (offline sim)
│
└── README.md
```

---

## How to Run

### 1. Generate stimulus data (MATLAB)

```matlab
% matlab/noisy_distance_generator.m
run noisy_distance_generator.m
% Output: data/noisy_distance_data.txt
```

### 2. Offline RTL verification (VHDL testbench)

Open `sim/tb_sensor_reader.vhd` in Vivado Simulator or ModelSim.  
Ensure `data/noisy_distance_data.txt` is on the simulation file path.  
Run simulation — results are logged to `data/hw_results.txt`.

### 3. SoC simulation with Zynq VIP

1. Open Vivado project and load `vivado/block_design/`
2. Verify IP references resolve (`collision_monitor_v1_0` from `vivado/ip/`)
3. Set `sim/tb_zynq_vip.sv` as the top-level simulation source
4. Run behavioral simulation — all four test phases print to the Tcl console:

```
TEST 1 - Power-on reset & warm-up
TEST 2 - Nominal case (safe distances)
TEST 3 - Boundary / corner case (value: 2000)
TEST 4 - Danger & Recovery sequence
SUCCESS: System fully recovered from danger state.
```

> **Note:** No physical hardware or Vitis/SDK installation is required. All validation runs in Vivado's built-in simulator.

---

## Lessons Learned

**Virtual Prototyping works.** The absence of physical hardware was the project's hardest constraint — and ultimately its most instructive one. Designing around that constraint forced a more rigorous verification methodology than would have been natural with a board in hand.

**Testbench quality is not optional.** The warm-up bug (Phase 1) would have been nearly impossible to catch with ad hoc testing. Structured, phased verification — even for a student project — surfaces root causes instead of symptoms.

**Resource optimization starts at the algorithm level.** The choice to use bit-shifting (`>> 2`) instead of a division operator for the averaging filter was not premature optimization — it was the correct RTL design decision from the start. Division operators infer expensive DSP primitives; bit-shifts are free in logic.

**Fixed-point thinking must precede RTL design.** Handling the two's complement hazard (negative distance → `0xFFFF` → false "safe" reading) in MATLAB before the data ever reached the hardware was the right place to solve it. Hardware fault prevention is cheaper than hardware fault handling.

---

## Known Limitations & Roadmap

| Area | Current State | Planned Improvement |
|------|--------------|---------------------|
| Filter architecture | Moving average (FIR-0) via bit-shift | IIR/FIR filter via MATLAB HDL Coder |
| Data transport | AXI4-Lite (memory-mapped, register-level) | AXI-Stream for continuous sensor data |
| Physical validation | Simulation only | Hardware bring-up on PYNQ-Z2 or Zybo with Vitis bare-metal C |

The generated `.xsa` (Xilinx Support Archive) is ready for Vitis import the moment a Zynq-7000 board becomes available.

---

## Background

Built during the 2nd semester of an Electrical and Computer Engineering program as a self-directed deep-dive into SoC design methodology. The goal was to go beyond coursework exercises and build something that reflects how FPGA-based systems are actually verified in industry — with structured test phases, explicit design decisions, and honest documentation of trade-offs.

---

*Designed and verified entirely in simulation. Physical hardware not required.*
