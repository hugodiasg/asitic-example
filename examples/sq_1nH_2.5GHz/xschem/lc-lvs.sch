v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 30 -220 30 {
lab=p1}
N -230 -160 -230 30 {
lab=p1}
N -160 30 -150 30 {
lab=p2}
N -150 30 -140 30 {
lab=p2}
N -140 -160 -140 30 {
lab=p2}
N -180 -300 -180 -280 {
lab=gnd}
N -230 -160 -220 -160 {
lab=p1}
N -160 -160 -140 -160 {
lab=p2}
C {devices/iopin.sym} -230 -70 0 1 {name=p1 lab=p1}
C {devices/iopin.sym} -140 -70 0 0 {name=p2 lab=p2}
C {sky130_fd_pr/cap_mim_m3_2.sym} -190 30 3 0 {name=C1 model=cap_mim_m3_2 W=22.3 L=22.3 MF=4 spiceprefix=X}
C {devices/iopin.sym} -180 -280 1 0 {name=p3 lab=gnd}
C {sky130_fd_pr/res_generic_m5.sym} -190 -160 3 0 {name=R1
W=12
L=1
model=res_generic_m5
mult=1}
