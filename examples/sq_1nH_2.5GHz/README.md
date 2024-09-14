# LC filter example

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




