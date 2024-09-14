v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -30 -20 -30 {
lab=p1}
N -110 -30 -110 20 {
lab=p1}
N -110 80 -110 140 {
lab=#net1}
N 40 -30 120 -30 {
lab=#net2}
N 180 -30 230 -30 {
lab=p2}
N 230 -30 230 10 {
lab=p2}
N 230 70 230 130 {
lab=#net3}
N 230 190 230 220 {
lab=sub}
N -110 220 230 220 {
lab=sub}
N -110 200 -110 220 {
lab=sub}
N 70 220 70 240 {
lab=sub}
N 230 -30 260 -30 {
lab=p2}
N -130 -30 -110 -30 {
lab=p1}
C {devices/res.sym} 150 -30 3 0 {name=R
value=2.857
footprint=1206
device=resistor
m=1}
C {devices/ind.sym} 10 -30 3 0 {name=L
m=1
value=1.006n
footprint=1206
device=inductor}
C {devices/res.sym} -110 170 0 0 {name=Rs1
value=27.37
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -110 50 0 0 {name=Cs1
m=1
value=33.97f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 230 40 0 0 {name=Cs2
m=1
value=36.78f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 230 160 0 0 {name=Rs2
value=-9
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 70 240 1 0 {name=p1 lab=sub}
C {devices/iopin.sym} -130 -30 0 1 {name=p2 lab=p1}
C {devices/iopin.sym} 260 -30 0 0 {name=p3 lab=p2}
