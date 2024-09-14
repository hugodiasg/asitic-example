v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -330 -800 470 -400 {flags=graph
y1=0.024
y2=1000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e+08
x2=4e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0
dataset=0
hilight_wave=1




color=5
node=imag(z_complex)}
N -390 -240 -390 -230 { lab=p1}
N 430 -240 430 -230 { lab=GND}
N -390 -240 -60 -240 { lab=p1}
N 30 -240 430 -240 {
lab=GND}
C {devices/vsource.sym} -390 -200 0 0 {name=V1 value="DC 0 AC 1"}
C {devices/gnd.sym} -390 -170 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 430 -230 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -110 -240 1 0 {name=l3 sig_type=std_logic lab=p1}
C {devices/code_shown.sym} 530 -760 0 0 {name=Simulation only_toplevel=false value=".ac lin 100k 100Meg 40G
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
C {devices/gnd.sym} -20 -190 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/corner.sym} 520 -930 0 0 {name=CORNER only_toplevel=true corner=tt}
C {/foss/designs/asitic-example/examples/sq_1nH_2.5GHz/xschem/l0.sym} -20 -230 0 0 {name=x1}
