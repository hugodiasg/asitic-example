v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -170 90 -160 { lab=p1}
N 510 -90 510 -80 { lab=GND}
N 90 -170 420 -170 { lab=p1}
N 450 -170 450 -110 {
lab=p1}
N 420 -170 450 -170 {
lab=p1}
N 450 -90 510 -90 {
lab=GND}
C {devices/vsource.sym} 90 -130 0 0 {name=V1 value="DC 0 AC 1"}
C {devices/gnd.sym} 90 -100 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 510 -80 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 370 -170 1 0 {name=l3 sig_type=std_logic lab=p1}
C {devices/code_shown.sym} 570 -210 0 0 {name=Simulation only_toplevel=false value=".ac lin 100k 100Meg 5G
.control
destroy all
run
save all
let z_complex = -v(p1)/i(v1)
let z = mag(z_complex)
let x = imag(z_complex)
let r = real(z_complex)
write tb-impedance-lc-ideal.raw
plot z x r
.endc"
}
C {sky130_fd_pr/corner.sym} 560 -380 0 0 {name=CORNER only_toplevel=true corner=tt}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/lc_ideal.sym} 300 -100 0 0 {name=x1}
