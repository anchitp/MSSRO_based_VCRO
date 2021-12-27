v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4300 200 4300 270 { lab=in}
N 4340 300 4350 300 { lab=GND}
N 4340 170 4350 170 { lab=VDD}
N 4350 130 4350 170 { lab=VDD}
N 4300 130 4350 130 { lab=VDD}
N 4300 130 4300 140 { lab=VDD}
N 4300 110 4300 130 { lab=VDD}
N 4300 330 4300 350 { lab=GND}
N 4490 200 4490 270 { lab=out}
N 4530 300 4540 300 { lab=GND}
N 4530 170 4540 170 { lab=VDD}
N 4540 130 4540 170 { lab=VDD}
N 4490 130 4540 130 { lab=VDD}
N 4490 130 4490 140 { lab=VDD}
N 4490 110 4490 130 { lab=VDD}
N 4490 330 4490 350 { lab=GND}
N 4490 230 4530 230 { lab=out}
N 4350 300 4350 340 { lab=GND}
N 4300 340 4350 340 { lab=GND}
N 4540 300 4540 340 { lab=GND}
N 4490 340 4540 340 { lab=GND}
N 4300 230 4340 230 { lab=in}
N 4430 230 4490 230 { lab=out}
N 4340 230 4350 230 { lab=in}
N 4410 230 4430 230 { lab=out}
N 4530 230 4570 230 { lab=out}
N 4230 230 4300 230 { lab=in}
N 4480 300 4490 300 { lab=GND}
N 4480 300 4480 330 { lab=GND}
N 4480 330 4490 330 { lab=GND}
N 4290 300 4300 300 { lab=GND}
N 4290 300 4290 330 { lab=GND}
N 4290 330 4300 330 { lab=GND}
N 4480 170 4490 170 { lab=VDD}
N 4480 140 4480 170 { lab=VDD}
N 4480 140 4490 140 { lab=VDD}
N 4290 170 4300 170 { lab=VDD}
N 4290 140 4290 170 { lab=VDD}
N 4290 140 4300 140 { lab=VDD}
C {/home/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 4320 300 0 1 {name=M9
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 4320 170 0 1 {name=M10
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 4300 110 0 0 {name=l13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 4300 350 0 0 {name=l14 sig_type=std_logic lab=GND}
C {/home/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 4510 300 0 1 {name=M11
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 4510 170 0 1 {name=M12
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 4490 110 0 0 {name=l15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 4490 350 0 0 {name=l1 sig_type=std_logic lab=GND}
C {xschem_sky130/sky130_fd_pr/res_high_po.sym} 4380 230 3 0 {name=R1
W=2.85
L=1.3
model=res_high_po
spiceprefix=X
mult=1}
C {iopin.sym} 4230 230 2 0 {name=p1 lab=in}
C {iopin.sym} 4570 230 0 0 {name=p2 lab=out}
C {iopin.sym} 4130 120 2 0 {name=p3 lab=VDD}
C {iopin.sym} 4130 150 2 0 {name=p4 lab=GND}
C {lab_pin.sym} 4380 250 0 0 {name=l2 sig_type=std_logic lab=GND}
