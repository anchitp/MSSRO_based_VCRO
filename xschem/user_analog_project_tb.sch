v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 150 490 150 { lab=io_analog[10:0]}
N 250 -150 350 -150 { lab=#net1}
N 250 -130 350 -130 { lab=#net2}
N 250 -110 350 -110 { lab=GND}
N 250 -90 350 -90 { lab=#net3}
N 250 -70 350 -70 { lab=#net4}
N 250 -50 350 -50 { lab=#net5}
N 250 -30 350 -30 { lab=#net6}
N 250 -10 350 -10 { lab=#net7}
N 250 10 350 10 { lab=#net8}
N 250 30 350 30 { lab=#net9}
N 250 50 350 50 { lab=#net10}
N 250 70 350 70 { lab=#net11}
N 250 90 350 90 { lab=#net12}
N 250 110 350 110 { lab=#net13}
N 250 130 350 130 { lab=#net14}
N 940 280 940 300 { lab=io_analog[1]}
N 350 -70 430 -70 { lab=#net4}
N 520 0 520 20 { lab=GND}
N 1010 360 1010 380 { lab=GND}
N 940 360 940 380 { lab=GND}
N 350 -110 360 -110 { lab=GND}
N 360 -110 360 -100 { lab=GND}
N -80 -150 -50 -150 { lab=#net15}
N -80 -130 -50 -130 { lab=#net16}
N -80 -110 -50 -110 { lab=#net17}
N -80 -90 -50 -90 { lab=#net18}
N -80 -70 -50 -70 { lab=#net19}
N -80 -50 -50 -50 { lab=#net20}
N -80 -30 -50 -30 { lab=#net21}
N -80 -10 -50 -10 { lab=#net22}
N -80 10 -50 10 { lab=#net23}
N -80 30 -50 30 { lab=#net24}
N -80 50 -50 50 { lab=#net25}
N -80 70 -50 70 { lab=#net26}
N -80 90 -50 90 { lab=#net27}
N 250 210 290 210 { lab=#net28}
N 1010 160 1010 300 { lab=io_analog[2]}
N 250 170 350 170 { lab=io_clamp_high[2:0]}
N 250 190 350 190 { lab=io_clamp_low[2:0]}
N 290 210 350 210 { lab=#net28}
N 490 100 490 320 { lab=io_analog[10:0]}
N 1010 110 1010 160 { lab=io_analog[2]}
N 500 110 850 110 { lab=io_analog[2]}
N 500 140 770 140 { lab=io_analog[1]}
N 940 140 940 280 { lab=io_analog[1]}
N 430 -70 470 -70 { lab=#net4}
N 470 -70 520 -70 { lab=#net4}
N 520 -70 520 -60 { lab=#net4}
N 500 170 710 170 { lab=io_analog[7]}
N 500 200 750 200 { lab=io_analog[6]}
N 500 230 700 230 { lab=io_analog[5]}
N 500 260 650 260 { lab=io_analog[4]}
N 500 290 600 290 { lab=io_analog[3]}
N 600 350 600 360 { lab=GND}
N 650 320 650 330 { lab=GND}
N 700 290 700 300 { lab=GND}
N 750 260 750 270 { lab=GND}
N 800 230 800 240 { lab=GND}
N 770 140 940 140 { lab=io_analog[1]}
N 850 110 1010 110 { lab=io_analog[2]}
N 710 170 800 170 { lab=io_analog[7]}
N 350 170 470 170 { lab=io_clamp_high[2:0]}
N 350 190 360 190 { lab=io_clamp_low[2:0]}
N 360 190 460 190 { lab=io_clamp_low[2:0]}
C {vsource.sym} 1010 330 0 0 {name=V1 value=1.8}
C {vsource.sym} 940 330 0 0 {name=V2 value=vct}
C {vsource.sym} 520 -30 0 0 {name=V3 value=1.8}
C {gnd.sym} 940 380 0 0 {name=l6 lab=GND}
C {gnd.sym} 1010 380 0 0 {name=l7 lab=GND}
C {gnd.sym} 520 20 0 0 {name=l8 lab=GND}
C {gnd.sym} 360 -100 0 0 {name=l9 lab=GND}
C {code.sym} 790 -500 0 0 {name=TT_MODELS
only_toplevel=false
format="tcleval( @value )"
value=".lib /home/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
C {code_shown.sym} 990 -840 0 0 {name=SPICE 
only_toplevel=false 
value=".include /root/user_analog_project_wrapper_flat.spice
.param vct=1.8
.IC v(io_analog[2])=1.8
.func frequency(t) \{1/t\}
.control
      let v_start=0.1
      let v_end=1.9
      let v_step=0.2
      let length=((v_end-v_start)/v_step)+1
      let v_temp=v_start
      let freq=unitvec(length)
      let v_control=unitvec(length)
      let v_map=unitvec(length)
      let count=0
      while v_temp le v_end
            alter V2 v_temp
            let v_control[count]=v_temp
            tran 1000p 40n UIC
            meas tran tdiff TRIG v(io_analog[3]) VAL=0.6 RISE=37 TARG v(io_analog[3]) VAL=0.6 RISE=38
            let freq[count]=frequency(tdiff)
            let v_temp=v_temp+v_step
            let count=count+1
            echo after while loop "%loop"
      end
      write user_analog_project_tb.raw
      plot freq vs v_control
      plot v(\\"io_analog[3]\\") v(\\"io_analog[4]\\") v(\\"io_analog[5]\\") v(\\"io_analog[6]\\") v(\\"io_analog[7]\\")
.endc
.save all"}
C {Anchit_Tests/user_analog_project_wrapper.sym} 100 30 0 0 {name=x2}
C {lab_pin.sym} 290 150 2 0 {name=l13 sig_type=std_logic lab=io_analog[10:0]}
C {bus_connect.sym} 490 120 1 1 {name=l14 lab=io_analog[2]}
C {bus_connect.sym} 490 150 1 1 {name=l1 lab=io_analog[1]}
C {bus_connect.sym} 490 180 1 1 {name=l2 lab=io_analog[7]}
C {bus_connect.sym} 490 210 1 1 {name=l3 lab=io_analog[6]}
C {bus_connect.sym} 490 240 1 1 {name=l4 lab=io_analog[5]}
C {bus_connect.sym} 490 270 1 1 {name=l5 lab=io_analog[4]}
C {bus_connect.sym} 490 300 1 1 {name=l10 lab=io_analog[3]}
C {capa.sym} 800 200 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 750 230 0 0 {name=C2
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 700 260 0 0 {name=C3
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 650 290 0 0 {name=C4
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 600 320 0 0 {name=C5
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 800 240 0 0 {name=l11 lab=GND}
C {gnd.sym} 750 270 0 0 {name=l12 lab=GND}
C {gnd.sym} 700 300 0 0 {name=l15 lab=GND}
C {gnd.sym} 650 330 0 0 {name=l16 lab=GND}
C {gnd.sym} 600 360 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 290 170 2 0 {name=l19 sig_type=std_logic lab=io_clamp_high[2:0]}
C {lab_pin.sym} 290 190 2 0 {name=l20 sig_type=std_logic lab=io_clamp_low[2:0]}
