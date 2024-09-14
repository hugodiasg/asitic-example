# asitic-example

This repo contains the setup to install the ASITIC with the [Sky130 nm PDK](https://skywater-pdk.readthedocs.io/en/main/) inductor example.

At the moment, the ASITIC oficial website is offline, but in this repo, is used a version of the [site](https://web.archive.org/web/20210411050138/http://rfic.eecs.berkeley.edu/~niknejad/asitic.html) using [Docker](https://www.docker.com/)) provided by [Way Back Machine](https://web.archive.org/)

# Install
Run `install.sh`.

# Example
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

![image](https://github.com/user-attachments/assets/ecf32bb9-c94b-4958-a85f-448e0343dec9)

![image](https://github.com/user-attachments/assets/85ca75b1-38bd-47af-a16d-01ee68ec76c5)

![image](https://github.com/user-attachments/assets/974dbf90-3c63-4810-9a7a-bf0d896c014a)

## LC Example

Click [here](https://github.com/hugodiasg/asitic-example/blob/main/examples/sq_1nH_2.5GHz/README.md)
