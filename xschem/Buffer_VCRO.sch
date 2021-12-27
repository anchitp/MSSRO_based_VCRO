v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 410 -110 410 -60 { lab=#net1}
N 410 -30 420 -30 { lab=VN}
N 420 -30 420 0 { lab=VN}
N 410 0 420 0 { lab=VN}
N 410 -140 420 -140 { lab=VP}
N 420 -170 420 -140 { lab=VP}
N 410 -170 420 -170 { lab=VP}
N 410 -200 410 -170 { lab=VP}
N 370 -140 370 -30 { lab=VN}
N 410 0 410 10 { lab=VN}
N 560 -110 560 -60 { lab=#net2}
N 560 -30 570 -30 { lab=VN}
N 570 -30 570 0 { lab=VN}
N 560 0 570 0 { lab=VN}
N 560 -140 570 -140 { lab=VP}
N 570 -170 570 -140 { lab=VP}
N 560 -170 570 -170 { lab=VP}
N 560 -200 560 -170 { lab=VP}
N 520 -140 520 -30 { lab=#net1}
N 560 0 560 10 { lab=VN}
N 720 -110 720 -60 { lab=#net3}
N 720 -30 730 -30 { lab=VN}
N 730 -30 730 0 { lab=VN}
N 720 0 730 0 { lab=VN}
N 720 -140 730 -140 { lab=VP}
N 730 -170 730 -140 { lab=VP}
N 720 -170 730 -170 { lab=VP}
N 720 -200 720 -170 { lab=VP}
N 680 -140 680 -30 { lab=#net2}
N 720 0 720 10 { lab=VN}
N 880 -110 880 -60 { lab=OUT}
N 880 -30 890 -30 { lab=VN}
N 890 -30 890 0 { lab=VN}
N 880 0 890 0 { lab=VN}
N 880 -140 890 -140 { lab=VP}
N 890 -170 890 -140 { lab=VP}
N 880 -170 890 -170 { lab=VP}
N 880 -200 880 -170 { lab=VP}
N 840 -140 840 -30 { lab=#net3}
N 880 0 880 10 { lab=VN}
N 410 -80 520 -80 { lab=#net1}
N 560 -80 680 -80 { lab=#net2}
N 720 -80 840 -80 { lab=#net3}
N 350 -90 370 -90 { lab=VN}
N 880 -80 910 -80 { lab=OUT}
N 410 10 880 10 { lab=VN}
N 670 10 670 50 { lab=VN}
N 410 -200 880 -200 { lab=VP}
N 660 -230 660 -200 { lab=VP}
C {opin.sym} 910 -80 0 0 {name=p6 lab=OUT}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 390 -140 0 0 {name=M49
L=0.15
W=25
nf=5
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 390 -30 0 0 {name=M50
L=0.15
W=25
nf=5 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 540 -140 0 0 {name=M51
L=0.15
W=50
nf=10
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 540 -30 0 0 {name=M52
L=0.15
W=50
nf=10 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 700 -140 0 0 {name=M53
L=0.15
W=75
nf=15
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 700 -30 0 0 {name=M54
L=0.15
W=75
nf=15 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/pfet_01v8.sym} 860 -140 0 0 {name=M55
L=0.15
W=100
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {xschem_sky130/sky130_fd_pr/nfet_01v8.sym} 860 -30 0 0 {name=M56
L=0.15
W=100
nf=20 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 670 50 0 0 {name=p1 lab=VN}
C {ipin.sym} 660 -230 0 0 {name=p2 lab=VP}
C {ipin.sym} 350 -90 0 0 {name=p3 lab=IN}
