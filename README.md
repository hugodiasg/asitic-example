# asitic-example

This repository contains the setup to install ASITIC and the [Sky130 nm PDK](https://skywater-pdk.readthedocs.io/en/main/) inductor examples (a simple inductor and a parallel LC Filter).

Currently, the official ASITIC [website](http://rfic.eecs.berkeley.edu/~niknejad/asitic.html) is offline. However, this repository uses a version provided by the [Wayback Machine](https://web.archive.org/), accessible [here](https://web.archive.org/web/20210411050138/http://rfic.eecs.berkeley.edu/~niknejad/asitic.html).


# Installation 
## Using a Docker Image

Click [here](https://github.com/hugodiasg/asitic-example/tree/main/etc/iic-osic-tools) to install a version that includes ASITIC using the [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS) Docker image on Windows (via VNC).

## Or Installing manually
Run `install.sh`.

# Example: Square Inductor
## Creating the Inductor

The example is an 1 nH Inductor at 2.5 GHz.
Run asitic and follow the steps below:
```/foss/designs > asitic 
ERROR: ld.so: object '/usr/lib/x86_64-linux-gnu/libnss_wrapper.so' from LD_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS64): ignored.
ASITIC DEBUG version Grackle (Linux_Intel) (Jacob)
Analysis & Simulation of Inductors and Transformers for ICs
Reading technology file </foss/tools/asitic/tech/sky130.tek>...
Reading .asitic init file...
ASITIC>  optsq

Desired inductance and accuracy in percent (e.g. '2 5' for 2nH within 5%)? (nH) 1 1

Name? l0

Length? 120

Min/Step/Max Spacing? 2 1 10

Min/Step/Max Width? 2 1 25

Metal layer? met5

Exit metal layer? met4

Frequency? (GHz) 2.5

Simulation started at:  Wed Sep  4 03:11:00 PM CEST 2024

Completed in 1617 iterations
Simulation ended at:  Wed Sep  4 03:11:00 PM CEST 2024

Pi Model at f=2.5 GHz:  Q = 5.476 , 5.478 , 5.503 
L = 1.006 nH R = 2.857 
Cs1 = 33.97 fF Rs1 = 27.37 
Cs2 = 36.78 fF Rs2 = -9      Est. Resonance = 27.58 GHz
Found:  n =3.5000, w =12.0000, s =2.0000
L =1.0057, R_sh = 90.1258(s), 90.1776(d)  Q = 5.4764, 5.4778, 5.5027(d)
ASITIC>  save l0

ASITIC>  cifsave l0 l0.cif 1 100 poly

ASITIC>  exit
```
![image](https://github.com/user-attachments/assets/830189cb-c1c6-4682-aafa-78888860572b)

## Opening the Inductor in Magic VLSI
Next, l0.cif will be opened in Magic VLSI:
- run `magic`
- in `tkcon`, run `cif read l0`
- save the file to create the `l0.mag`

![image](https://github.com/user-attachments/assets/470bcb71-5c35-445b-a29e-0777d43dfcb9)


## Creating a symbol and simulating the pi equivalent of the Inductor

testbench: `tb-ind.sch`

inductor: `l0.sch` and `l0.sym`

![image](https://github.com/user-attachments/assets/463e0e76-8920-44f2-a2f8-45c5fd4a09ad)

![image](https://github.com/user-attachments/assets/57dbf431-dc72-47b1-99ad-61e44fd180b2)

![image](https://github.com/user-attachments/assets/974dbf90-3c63-4810-9a7a-bf0d896c014a)

# Example: Parallel LC Filter

Parallel LC filter to operate at 2.5 GHz.

## Creating the LC and performing the AC simulation

file: `xschem/tb-impedance-lc.sch`

![image](https://github.com/user-attachments/assets/da329bf5-4121-4369-a5e5-653da314b210)

![image](https://github.com/user-attachments/assets/cea4f637-21e6-40cc-9eda-60f2ef4625f0)

![image](https://github.com/user-attachments/assets/68bec3b9-bb9e-4172-9736-5efa5f2bb347)

## Making the Layout of the LC

A thin layer of `rmetal5` was placed near the `p1` port to prevent short circuits.

file: `lc-lvs.mag`

![image](https://github.com/user-attachments/assets/2ec82267-7887-491d-9d5f-1a731aabe32e)

## Running the LVS (Layout Vs Schematic)

For the LVS run, the inductor is not considered as a component, but the `rmetal5` layer is. Therefore, the schematic used for the LVS includes only the `C` and `res_generic_m5`.

Layout: `lc-lvs.mag`

Schematic with the `res_generic_m5` replacing the inductor: `lc-lvs.sch`

![image](https://github.com/user-attachments/assets/e9696fe1-5f6d-462f-a5d0-be457acbbe39)

## Running the PEX (Parasitic Extraction)
For the PEX run, the inductor was removed from the layout because its parasitics are already "included" in its Pi model.

file: `lc-pex.mag`

![image](https://github.com/user-attachments/assets/34450339-f3c5-485d-a8af-d3b5206808f0)

## Post Layout Simulation

The PEX was included as a code block in a `.sch` file (with `.subckt` and `.ends` commented out). The PEX and the inductor were combined to create the post-layout LC.

PEX: `lc-pex.sch`

post layout LC: `lc-pex-full.sch`

![image](https://github.com/user-attachments/assets/981030ff-7b48-49cd-b77c-bbe524e274bd)

![image](https://github.com/user-attachments/assets/3ad9a84c-d7d7-4cbd-93cd-a2321bb7adcf)

![image](https://github.com/user-attachments/assets/7dd1d7a4-3104-47e4-862c-3ed396489e67)
