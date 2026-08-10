2:1 Multiplexer using Verilog HDL

📌 Introduction

A 2:1 Multiplexer (MUX) is a digital circuit that selects one of two input signals and sends the selected input to the output.

It has:

- 2 Data Inputs: "I0", "I1"
- 1 Select Input: "S"
- 1 Output: "Y"

🔹 Working

The select line determines which input is connected to the output.

Select (S)| Output (Y)
0| I0
1| I1

The Boolean expression for a 2:1 MUX is:

"Y = (~S & I0) | (S & I1)"

🔹 Block Diagram

        I0 ───────┐
                  │
                  ├────► Y
                  │
        I1 ───────┤
                  │
        S ────────┘
       Select

🛠️ Tools Used

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave (for waveform simulation)
- GitHub

📂 Project Files

- "mux_2to1.v" → Verilog design code
- "mux_2to1_tb.v" → Testbench
- "simulation/simulation_output.txt" → Simulation results

▶️ Simulation

Compile the design and testbench:

iverilog -o mux_sim mux_2to1.v mux_2to1_tb.v

Run the simulation:

vvp mux_sim

To generate a waveform:

iverilog -o mux_sim -g2012 -s mux_2to1 -o mux_sim mux_2to1.v mux_2to1_tb.v

✅ Expected Result

When "S = 0", output "Y" follows "I0".

When "S = 1", output "Y" follows "I1".

🎯 Conclusion

The 2:1 Multiplexer was successfully designed and verified using Verilog HDL. The testbench checks different combinations of inputs and confirms that the correct input is selected according to the select line.
