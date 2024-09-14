v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -160 -230 30 {
lab=p1}
N -140 -160 -140 30 {
lab=p2}
N 130 -70 130 -60 {
lab=gnd}
N 10 -120 20 -120 {
lab=p1}
N 320 -120 330 -120 {
lab=p2}
C {devices/iopin.sym} -230 -70 0 1 {name=p1 lab=p1}
C {devices/iopin.sym} -140 -70 0 0 {name=p2 lab=p2}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/l0.sym} -190 -150 0 0 {name=x1}
C {devices/iopin.sym} -190 -110 1 0 {name=p3 lab=gnd}
C {devices/lab_pin.sym} 10 -120 0 0 {name=p4 sig_type=std_logic lab=p1}
C {devices/lab_pin.sym} 130 -60 3 0 {name=p5 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 330 -120 2 0 {name=p6 sig_type=std_logic lab=p2}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/lc-pex.sym} 170 -120 0 0 {name=x2}
