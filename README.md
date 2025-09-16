# 4-bit ALU in Verilog 🚀

This project implements a **4-bit Arithmetic Logic Unit (ALU)** in Verilog, along with a testbench and waveform analysis using GTKWave.  
It demonstrates **digital logic design, simulation, and verification skills**, which are highly relevant for VLSI roles (e.g., Cadence internship).

---

## 📝 Features
- 4-bit inputs `A` and `B`
- 3-bit ALU select (`ALU_Sel`) to choose operation
- Supported operations:
  - `000` → Addition  
  - `001` → Subtraction  
  - `010` → AND  
  - `011` → OR  
  - `100` → XOR  
  - `101` → Shift Left  
  - `110` → Shift Right  
- Outputs: `ALU_Out[3:0]` and `CarryOut`

---

## 📂 Repository Contents
- `alu.v` → ALU RTL code  
- `alu_tb.v` → Testbench for simulation  
- `alu.vcd` → Simulation waveform dump (for GTKWave)  
- `alu_sim` → Compiled simulation executable  
- `waveform.png` → Sample simulation waveform (added manually)  

---

## ⚙️ Tools Used
- **Icarus Verilog (iverilog)** → Compilation & Simulation  
- **GTKWave** → Waveform visualization  
- **GitHub Desktop** → Version control and publishing  

---

## ▶️ How to Run

## 1. Compile
```bash
iverilog -o alu_sim alu.v alu_tb.v

---

## 2. Run Simulation
```bash
vvp alu_sim

---

## 3. View Waveforms
```bash
gtkwave alu.vcd

## 📊 Sample Waveform

Below is a waveform screenshot from GTKWave showing inputs (A, B, ALU_Sel) and outputs (ALU_Out, CarryOut): **[waveform.png]**

## 🎯 Learning Outcomes

Learned Verilog HDL basics

Performed functional simulation with Icarus Verilog

Visualized signals with GTKWave

Practiced version control & project publishing using GitHub

## 🤝 Contribution

Feel free to fork this repo, raise issues, or suggest improvements.

## 📧 Contact

Author: **Keshav**
📩 Email: **[keshavskn123@gmail.com]**
