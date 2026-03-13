# CMOS Standard Cell Design with GPDK090

This repository contains a small digital CMOS standard cell library designed and analyzed in **Cadence Virtuoso** using the **GPDK090** technology. The project includes transistor-level cell design, schematic capture, layout implementation, extracted views, functional verification, and testbenches for timing and power analysis.

## Overview

The main goal of this project is to build and validate a set of basic standard cells that can be reused in larger digital circuits. In addition to individual logic gates, the repository also includes a **transmission gate**, a **D flip-flop**, and a **1-bit structural full adder** built from the custom cells.

This work is useful for:

- learning full-custom CMOS standard cell design
- practicing schematic, layout, and LVS/PEX-oriented flows in Cadence
- studying delay, functionality, and power behavior of basic digital cells
- building larger digital blocks from verified primitive cells

## Included Cells and Blocks

The library currently contains these main designs:

- `INV` – inverter
- `NAND2` – 2-input NAND gate
- `NOR2` – 2-input NOR gate
- `AND2` – 2-input AND gate
- `OR2` – 2-input OR gate
- `XOR2` – 2-input XOR gate
- `TG` – transmission gate
- `DFF` – D flip-flop
- `full_adder_structural` – 1-bit full adder built structurally from logic cells

The repository also contains multiple testbenches for:

- functional verification
- timing analysis
- power analysis
- load characterization
- NMOS and PMOS device characterization

## Design Flow

Each standard cell generally follows a common custom IC design flow:

1. **Schematic design** in Cadence Virtuoso
2. **Symbol creation** for hierarchical reuse
3. **Functional verification** with testbenches
4. **Layout design** following CMOS layout rules
5. **Parasitic extraction** to create extracted views
6. **Post-layout simulation** for timing and power evaluation

This repository is organized to reflect that flow, so most cell folders include views such as:

- `schematic/`
- `symbol/`
- `layout/`
- `av_extracted/`
- `functional/` (for cells with exported Verilog behavior)

## Repository Structure

```text
.
├── cadence/
│   └── standardcell/
│       ├── AND2/                # gate cell views
│       ├── DFF/                 # D flip-flop cell views
│       ├── INV/                 # inverter cell views
│       ├── NAND2/
│       ├── NOR2/
│       ├── OR2/
│       ├── TG/
│       ├── XOR2/
│       ├── full_adder_structural/
│       ├── *_tb/                # schematic/config testbenches
│       ├── tb_*                 # timing, power, and load analysis benches
│       ├── nmos_char_sch/       # NMOS characterization setup
│       └── pmos_char_sch/       # PMOS characterization setup
├── docs/                        # project notes and supporting documentation
│   ├── README.md
│   ├── power_analysis/
│   └── report.pdf
├── verilog/
│   └── full_adder_structural.v  # structural Verilog reference
└── README.md
```

## Cadence Library Organization

Inside [cadence/standardcell](cadence/standardcell), each design is stored as a Cadence library cell with multiple views. Typical contents include:

- `schematic/` – transistor-level schematic
- `symbol/` – reusable symbol for higher-level integration
- `layout/` – physical layout
- `av_extracted/` – extracted netlist/layout view for post-layout simulation
- `functional/` – simple Verilog model for logic-level checking when available

This structure makes it easy to move between schematic-level and layout-level verification.

## Verilog Content

The repository also includes simple Verilog descriptions for some logic cells and a structural full adder implementation in [verilog/full_adder_structural.v](verilog/full_adder_structural.v). These files help document the intended logic behavior of the custom standard cells.

## Documentation

Additional material is available in [docs](docs):

- [docs/README.md](docs/README.md) – short documentation entry point
- [docs/power_analysis/power_analysis.md](docs/power_analysis/power_analysis.md) – power analysis note
- `docs/report.pdf` – full report and supporting project material

## Tools and Technology

- **EDA Tool:** Cadence Virtuoso
- **Technology Library:** GPDK090
- **Design Style:** full-custom CMOS standard cell design
- **Languages:** Cadence database views and Verilog

## How to Use This Repository

If you want to review or continue this project:

1. Open the Cadence library under [cadence/standardcell](cadence/standardcell).
2. Inspect each cell's `schematic`, `layout`, and `av_extracted` views.
3. Open the corresponding testbench cells to reproduce simulations.
4. Use the Verilog files as a quick reference for expected logic functionality.
5. Read the documentation in [docs](docs) for analysis notes and the final report.


