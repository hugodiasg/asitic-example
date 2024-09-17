v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -730 210 -720 { lab=p1}
N 420 -730 420 -720 { lab=GND}
N 280 -730 330 -730 {
lab=p1}
N 210 -730 280 -730 {
lab=p1}
C {devices/vsource.sym} 210 -690 0 0 {name=V1 value="DC 0 AC 1"}
C {devices/gnd.sym} 210 -660 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 420 -720 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 280 -730 1 0 {name=l3 sig_type=std_logic lab=p1}
C {devices/code_shown.sym} 530 -760 0 0 {name=Simulation only_toplevel=false value=".ac lin 100k 100Meg 40G
.control
destroy all
run
save all
let z_complex = -v(p1)/i(v1)
let z = mag(z_complex)
let x = imag(z_complex)
let r = real(z_complex)
write tb-ind.raw
plot z x r
.endc"
}
C {devices/gnd.sym} 370 -680 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/corner.sym} 520 -930 0 0 {name=CORNER only_toplevel=true corner=tt}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/l0.sym} 370 -720 0 0 {name=x1}
