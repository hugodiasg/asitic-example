v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -60 30 -60 {
lab=p1}
N -50 0 30 0 {
lab=p2}
N -10 0 -10 20 {
lab=p2}
N -10 -90 -10 -60 {
lab=p1}
C {devices/capa.sym} -50 -30 0 0 {name=C1
m=1
value=4.0528p
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 30 -30 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {devices/iopin.sym} -10 -90 0 0 {name=p1 lab=p1}
C {devices/iopin.sym} -10 20 0 0 {name=p2 lab=p2}
