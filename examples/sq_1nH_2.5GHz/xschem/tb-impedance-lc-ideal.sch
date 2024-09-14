v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -350 310 -350 320 { lab=p1}
N 470 310 470 320 { lab=GND}
N -350 310 -20 310 { lab=p1}
N 70 310 470 310 {
lab=GND}
N 10 310 10 370 {
lab=p1}
N -20 310 10 310 {
lab=p1}
N 10 390 70 390 {
lab=GND}
N 70 310 70 390 {
lab=GND}
C {devices/vsource.sym} -350 350 0 0 {name=V1 value="DC 0 AC 1"}
C {devices/gnd.sym} -350 380 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 470 320 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -70 310 1 0 {name=l3 sig_type=std_logic lab=p1}
C {devices/code_shown.sym} 570 -210 0 0 {name=Simulation only_toplevel=false value=".ac lin 100k 100Meg 40G
.control
destroy all
run
save all
let z_complex = -v(p1)/i(v1)
let z = mag(z_complex)
let x = imag(z_complex)
let r = real(z_complex)
write tb-impedance.raw
plot z x r
.endc"
}
C {sky130_fd_pr/corner.sym} 560 -380 0 0 {name=CORNER only_toplevel=true corner=tt}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/lc_ideal.sym} -140 380 0 0 {name=x1}
