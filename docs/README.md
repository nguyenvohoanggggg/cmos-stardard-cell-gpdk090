# Documentation Guide

This folder contains the supporting documentation for the CMOS standard cell project. It is used to store figures, screenshots, analysis notes, and the final report related to the design and verification of the standard cells created in Cadence Virtuoso with GPDK090.

## Purpose of this

The [docs](docs) directory collects the visual and written material used to explain the project, including:

- schematic screenshots
- symbol views
- layout screenshots
- simulation waveforms
- power analysis notes
- final report material

This folder is intended to make the project easier to review without opening every Cadence cell manually.

## Contents

### Cell documentation folders

Each subfolder usually contains image files showing the main views of a standard cell or block:

- [docs/and](docs/and) – AND gate documentation
- [docs/inv](docs/inv) – inverter documentation
- [docs/nand](docs/nand) – NAND gate documentation
- [docs/nor](docs/nor) – NOR gate documentation
- [docs/or](docs/or) – OR gate documentation
- [docs/xor](docs/xor) – XOR gate documentation
- [docs/transmission_gate](docs/transmission_gate) – transmission gate documentation
- [docs/d_ff](docs/d_ff) – D flip-flop documentation
- [docs/full_adder](docs/full_adder) – full adder documentation

The files inside these folders commonly include:

- schematic images
- symbol images
- layout images
- waveform images from simulation

## Power analysis

The folder [docs/power_analysis](docs/power_analysis) contains notes related to power evaluation:

- [docs/power_analysis/power_analysis.md](docs/power_analysis/power_analysis.md)

This section can be extended later with measured power tables, waveform captures, and short conclusions for each cell.

## Final report

The main project report is stored as:

- [docs/report.pdf](docs/report.pdf)

This report can be used as the full summary of the project, including design background, implementation steps, and results.

## Suggested reading order

If you are reviewing the project for the first time, a good order is:

1. Read the main [README.md](../README.md)
2. Open [docs/report.pdf](docs/report.pdf)
3. Review the cell image folders in [docs](docs)
4. Check [docs/power_analysis/power_analysis.md](docs/power_analysis/power_analysis.md)

## Notes

- Some folder names keep the original naming used during the project.
- The documentation is mainly image-based, so it works as a quick visual summary of each design.
- More detailed explanations can be added later for each cell if needed.
