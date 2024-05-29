# MoSAIC-P38
The Modular system for Acceleration Integration (`MoSAIC`) is a multi-tiled architecture for accurate and fast exploration of message driven computation.

- `MoSAIC` is written in system-verilog.
- A tile can house a lightweight RISCV processor such as the PICORV32 or a generic accelerator. 
- The tiles are connected through a light-weight network on chip (NoC) following an AXIStream protocol. 
- Each tile has a hardware message queue for inter-tile communication used for message driven computation. 
- A RISCV ISA extension enables straight access to the physical message queue or remote memory through C/C++ primitives (qPut, qGet, qWait, qPoll, mPut, mGet).
- Partitioned global address scheme (PGAS).

## Dependencies
For Icarus Verilog 
- i-verilog (at least version 11)
- vpp

## Repo Structure

- build: contains header files generated by scripts. Initially empty.
- doc: documentation. 
- icarus: files required to launch a verilog simulation using icarus-verilog.
- models: simple memory and register models for icarus-verilog.
- src: `MoSAIC` source code. 
- tools: helper perl and bash scripts used to setup `MoSAIC` and simulation environment 
  - generate: contains `<testcase>.pl` files with examples for setting up `MoSAIC` and simulations cases. 
  - checkers: simple checkers
  - picorvc: scripts and files required to compile c/c++ code for the picorv32 in `MoSAIC`.
  - vivado_scripts : scripts used for setting up the Vivado project and Vivado IP.
- vivado: directory to host the Vivado project

## How to use

1. Create a testcase:
   A testcase has the details of a particular `MoSAIC` setup. To create a testcase, from the project root go to `tools/generate/` and create a new file `<testcase>.pl` or start from one of the examples such as `mosaic_2x2.pl`. A testcase has at a minimum the information below:
   ```
   #- Set the number of rows (r) and columns (c) in MOSAIC array. I this case a 2x2 for 4 tiles.
   $param{'r'} = 2;
   $param{'c'} = 2;
   
   #- Set the type for each tile
   @tile_array = (['pico', 'spad'],
                  ['loop', 'pico']);
   
   #- Set the firmware to load in each scratchpad
   @pico_program  = ('pico_scratchpad.hex', '', '', 'test_tile_nop.hex');

   #- Set to 1 to run a simulation after setting up the environment
   $param{'run_sim'} = 1;
   ```
   
   If using Vivado add the following lines to the testcase
   
   ```
   #- tell the tools to use vivado as the simulator
   $param{'vivado'} = 1;

   #- tell the tools to create the Vivado project. Warning: Overwrites the Vivado directory.
   $param{'vivado_project'} = 1;
   ```

   If using i-verilog no need to add anything else to the testcase. Go to step 2 or 3.

2. Creating the files and running a simulation:
   In the terminal execute the testcase. *i.e*. `./mosaic_2x2.pl` or `perl ./mosaic_2x2.pl`.
   - The tools generate Verilog header files setting up mosaic. These files are located in the build directory.
   - If `$param{'run_sim'}` is set to `1`, the tool launches a simulation.
     - If using Vivado: a Vivado project is created in the vivado directory.
     - If using i-verilog: the simulation results will be in the icarus directory.

3. Creating the files and running a simulation manually:
   If `$param{'run_sim'}` is not set, or is set to something different than `1` the tool stops at creating the files. To manually launch a simulation:
      - For Icarus: go to the `icarus` folder and execute `launch_sim.sh`
      - For Vivado: go to the `vivado` folder
        - Invoque Vivado. You can use the `launch_sim.sh` script 
        - Create a Vivado project.
        - Add as sources the `build` and `src` directories.
        - For simulation right click at `tb_mosaic.sv` and click on *set as top*. For synthesis set `mosaic.sv` as top.

## Adding an accelerator

Use the `tile_template.sv` in the doc directory to instantiate your accelerator in the tile. Examples of accelerators are : 
- `./src/Tile.HDL/scratchpad_tile/Tile_scratchpad.sv` and 
- `./src/Tile.HDL/loop_tile/Tile_loop.sv`

## Adding support for DDR4

1. From the root go to `tools/generate/`, in there `mosaic_2x2_ddr4.pl` is an example of how to add DDR4 support. Besides the basic features add the following parameters 
      ```
      $param{'ddr4_flag'}       = 1;   #- Add the tile memory manager within mosaic
      $param{'ddr_cache_lines'} = 8;   #- Setup the depth of the cache in the tile memory manager
      $param{'vivado_ip_dram'}  = 1;   #- Adds support for the Xilinx memory controller in the testbench 
      ```
2. In the terminal execute the testcase. *i.e.* `perl ./mosaic_2x2_ddr4.pl`. Verilog header files setting up mosaic are generated in the build directory.
3. In Vivado (Existing project)
    - Source the tcl script in Vivado's tcl window. *i.e.* `source ./<memory_script>.tcl`
    - AMD provides a model for DDR4 memory simulations. Add it to the project if using. 

**Notes**:
- There is an extremely basic testbench designed to respond random data when there are wr/rd requests for the DDR4. It can be used in Icarus and Vivado for basic functionality.  
- To add the Tile memory manager for DDR4 suport and run a simulation without the *Xilinx memory controller* and the *DDR4 model* use:

```
   $param{'ddr4_flag'}       = 1;   #- Add the tile memory manager within mosaic
   $param{'vivado_ip_dram'}  = 0;   #- Instantiate the Xilinx memory controller in the testbenc 
```
## Documentation
See [Tutorial](https://github.com/PatriGonzalez/P38_Mosaic/tree/mosaic_april2023/mosaic_4k/doc) for more documentation.

## Open Issues
- Angelos packet file.
- DRAM model, and where it is?

****************************
# Copyright Notice

P38 heterogeneous multi-tiled system with support for message queues (MoSAIC) Copyright (c) 2024, The Regents of the University of California, 
through Lawrence Berkeley National Laboratory (subject to receipt of
any required approvals from the U.S. Dept. of Energy). All rights reserved.

If you have questions about your rights to use or distribute this software,
please contact Berkeley Lab's Intellectual Property Office at
IPO@lbl.gov.

NOTICE.  This Software was developed under funding from the U.S. Department
of Energy and the U.S. Government consequently retains certain rights.  As
such, the U.S. Government has been granted for itself and others acting on
its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the
Software to reproduce, distribute copies to the public, prepare derivative 
works, and perform publicly and display publicly, and to permit others to do so.


