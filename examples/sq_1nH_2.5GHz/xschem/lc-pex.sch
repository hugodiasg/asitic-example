v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -170 -180 -150 {
lab=gnd}
N -230 -70 -200 -70 {
lab=p1}
N -160 -70 -140 -70 {
lab=p2}
C {devices/iopin.sym} -230 -70 0 1 {name=p1 lab=p1}
C {devices/iopin.sym} -140 -70 0 0 {name=p2 lab=p2}
C {devices/iopin.sym} -180 -150 1 0 {name=p3 lab=gnd}
C {devices/code.sym} 70 -200 0 0 {name=s1 only_toplevel=false value="
* NGSPICE file created from lc-pex.ext - technology: sky130A

*.subckt lc-pex p1 p2 gnd
X0 p1.t0 p2.t3 sky130_fd_pr__cap_mim_m3_2 l=22.3 w=22.3
X1 p1.t1 p2.t2 sky130_fd_pr__cap_mim_m3_2 l=22.3 w=22.3
X2 p1.t2 p2.t1 sky130_fd_pr__cap_mim_m3_2 l=22.3 w=22.3
X3 p1.t3 p2.t0 sky130_fd_pr__cap_mim_m3_2 l=22.3 w=22.3
R0 p1.n2 p1.n0 0.348247
R1 p1.n1 p1.t3 0.0780897
R2 p1 p1.n2 0.070689
R3 p1.n0 p1.t1 0.0686501
R4 p1.n2 p1.n1 0.0520717
R5 p1.n0 p1.t2 0.000500104
R6 p1.n1 p1.t0 0.000500104
R7 p2.n0 p2.t3 0.495841
R8 p2.n1 p2.t1 0.49576
R9 p2 p2.n2 0.483229
R10 p2.n2 p2.n1 0.270536
R11 p2.n2 p2.n0 0.144491
R12 p2.n1 p2.t2 0.000906926
R13 p2.n0 p2.t0 0.000825541
C0 p1 p2 0.159p
*.ends

"}
