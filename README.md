# asitic-example

This repo contains the setup to install the ASITIC and a [Sky130 nm PDK](https://skywater-pdk.readthedocs.io/en/main/) inductor example.

At the moment, the ASITIC [oficial website](http://rfic.eecs.berkeley.edu/~niknejad/asitic.html) is offline but this repo uses a version provided by [Way Back Machine](https://web.archive.org/) in [this link](https://web.archive.org/web/20210411050138/http://rfic.eecs.berkeley.edu/~niknejad/asitic.html).


# Installation 
## Using a Docker Image

Click [here](https://github.com/hugodiasg/asitic-example/tree/main/etc/iic-osic-tools) to install a version of the Docker Image of [iic-osic-tools](https://github.com/iic-jku/IIC-OSIC-TOOLS) in Windows (using VNC).

## Or Installing manually
Run `install.sh`.

# Example: Square Inductor
## Creating the Inductor

The example is an Inductor with 1 nH at 2.5 GHz.
Run `asitic` and follow these steps bellow:
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
Next, the `l0.cif` will be open on the Magic VLSI:
- run `magic`
- in `tkcon`, run `cif read l0`
- save the file to create the `l0.mag`

![image](https://github.com/user-attachments/assets/470bcb71-5c35-445b-a29e-0777d43dfcb9)


## Creating a symbol and simulating the pi equivalent of the Inductor

testbench: `tb-ind.sch`

inductor: `l0.sch` and `l0.sym`

![image](https://github.com/user-attachments/assets/ecf32bb9-c94b-4958-a85f-448e0343dec9)

![image](https://github.com/user-attachments/assets/85ca75b1-38bd-47af-a16d-01ee68ec76c5)

![image](https://github.com/user-attachments/assets/974dbf90-3c63-4810-9a7a-bf0d896c014a)

# Example: LC Filter

Paralel LC filter to operate at 2.5 GHz.

## Creating the LC and doing the AC simulation

file: `xschem/tb-impedance-lc.sch`

![image](https://github.com/user-attachments/assets/7a7b2e08-82bc-427c-99ba-5d5d10dcbb94)

![image](https://github.com/user-attachments/assets/68bec3b9-bb9e-4172-9736-5efa5f2bb347)

## Making the Layout of the LC

Near to the `p1` port, a thin layer of `rmetal5` was placed to prevent short circuits.

file: `lc-lvs.mag`

![image](https://github.com/user-attachments/assets/2ec82267-7887-491d-9d5f-1a731aabe32e)

## Running the LVS (Layout Vs Schematic)
To run the LVS, the inductor isn't considered as component but the `rmetal5` layer is. So the schematic used to run the LVS just has the `C` and the `res_generic_m5`:

Layout without the indutor: `lc-lvs.mag`

Schematic without the inductor: `lc-lvs.sch`

![image](https://github.com/user-attachments/assets/e9696fe1-5f6d-462f-a5d0-be457acbbe39)

## Running the PEX (Parasitic Extraction)
To run the PEX, the inductor was removed from the layout because its parasitics are already "included" in its pi model.

file: `lc-pex.mag`

![image](https://github.com/user-attachments/assets/34450339-f3c5-485d-a8af-d3b5206808f0)

## Post Layout Simulation

The PEX was included as a `code` block in a `.sch` (with `.subckt and .ends` commented). The PEX and the inductor was placed together to compose the post layout LC.

PEX: `lc-pex.sch`
post layout LC: `lc-pex-full.sch`

![image](https://github.com/user-attachments/assets/981030ff-7b48-49cd-b77c-bbe524e274bd)

![image](https://github.com/user-attachments/assets/3ad9a84c-d7d7-4cbd-93cd-a2321bb7adcf)

![image](https://github.com/user-attachments/assets/7dd1d7a4-3104-47e4-862c-3ed396489e67)
