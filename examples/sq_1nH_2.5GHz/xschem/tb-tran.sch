v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 0 -150 0 { lab=v1}
N -480 0 -480 10 { lab=#net1}
N 340 0 340 10 { lab=GND}
N -480 0 -360 0 { lab=#net1}
N -300 0 -200 0 { lab=v1}
N 150 0 160 0 { lab=GND}
N 160 0 340 0 { lab=GND}
N -150 0 -110 0 {
lab=v1}
N 90 0 150 0 {
lab=GND}
N 10 0 90 0 {
lab=GND}
N -20 0 10 0 {
lab=GND}
C {devices/vsource.sym} -480 40 0 0 {name=V1 value="sin(0 1.8 2.5G)"}
C {devices/gnd.sym} -480 70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 340 10 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -200 0 1 0 {name=l3 sig_type=std_logic lab=v1}
C {devices/code_shown.sym} 200 -250 0 0 {name=Simulation only_toplevel=false value=".tran 0.4p 400p
.control
destroy all
run
let i1 = -i(v2)
plot v1 i1

.endc"
}
C {devices/vsource.sym} -330 0 1 0 {name=V2 value="0"}
C {devices/gnd.sym} -60 40 0 0 {name=l5 lab=GND}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/l0.sym} -70 10 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} 390 120 0 0 {name=CORNER only_toplevel=true corner=tt}
