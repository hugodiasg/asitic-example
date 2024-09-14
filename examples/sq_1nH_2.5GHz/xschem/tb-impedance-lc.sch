v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -430 -350 370 50 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N -350 310 -350 320 { lab=p1}
N 180 310 180 320 { lab=GND}
N -350 310 -290 310 {
lab=p1}
N -290 310 -200 310 {
lab=p1}
N -10 360 -10 370 { lab=GND}
N 190 530 190 540 { lab=GND}
N 0 580 0 590 { lab=GND}
N -240 310 -240 530 {
lab=p1}
N -240 530 -190 530 {
lab=p1}
N -130 310 -120 310 {
lab=#net1}
N -200 310 -190 310 {
lab=p1}
N -190 530 -180 530 {
lab=p1}
N -120 530 -110 530 {
lab=#net2}
C {devices/vsource.sym} -350 350 0 0 {name=V1 value="DC 0 AC 1"}
C {devices/gnd.sym} -350 380 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 320 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -290 310 1 0 {name=l3 sig_type=std_logic lab=p1}
C {devices/code_shown.sym} 570 -210 0 0 {name=Simulation only_toplevel=false value=".ac lin 100k 100Meg 10G
.control
destroy all
run
save all
* pre layout
let z_complex_pre = -v(p1)/i(vpre)
let z_pre = mag(z_complex_pre)
let x_pre = imag(z_complex_pre)
let r_pre = real(z_complex_pre)

* post layout
let z_complex_post = -v(p1)/i(vpost)
let z_post = mag(z_complex_post)
let x_post = imag(z_complex_post)
let r_post = real(z_complex_post)

write tb-impedance-lc.raw
*plot z_pre z_post
*plot x_pre x_post
*plot r_pre r_post 
.endc"
}
C {sky130_fd_pr/corner.sym} 560 -380 0 0 {name=CORNER only_toplevel=true corner=tt}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/lc.sym} 30 310 0 0 {name=x1}
C {devices/gnd.sym} -10 370 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 190 540 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 0 590 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -160 310 1 0 {name=Vpre value="0"}
C {devices/vsource.sym} -150 530 1 0 {name=Vpost value="0"}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/lc-pex-full.sym} 40 530 0 0 {name=x2}
