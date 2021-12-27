v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4580 320 4610 320 { lab=vccd1}
N 4580 380 4610 380 { lab=vssa1}
N 4540 360 4610 360 { lab=#net1}
N 4480 340 4610 340 { lab=#net2}
N 4580 270 4580 320 { lab=vccd1}
N 4480 360 4540 360 { lab=#net1}
N 4910 60 4910 70 { lab=#net3}
N 4580 250 4580 270 { lab=vccd1}
N 4580 380 4580 400 { lab=vssa1}
N 4580 400 4580 420 { lab=vssa1}
N 4910 -110 5140 -110 { lab=#net3}
N 5380 -110 5480 -110 { lab=io_analog[6]}
N 4910 -110 4910 60 { lab=#net3}
N 5380 60 5480 60 { lab=io_analog[7]}
N 5380 230 5480 230 { lab=io_analog[5]}
N 4910 70 4910 320 { lab=#net3}
N 4950 60 5140 60 { lab=#net4}
N 4950 60 4950 340 { lab=#net4}
N 4910 340 4950 340 { lab=#net4}
N 4990 230 5140 230 { lab=#net5}
N 4990 230 4990 360 { lab=#net5}
N 4910 360 4990 360 { lab=#net5}
N 5380 400 5480 400 { lab=io_analog[4]}
N 4990 400 5140 400 { lab=#net6}
N 5380 570 5480 570 { lab=io_analog[3]}
N 4990 570 5140 570 { lab=#net7}
N 4910 380 4990 380 { lab=#net6}
N 4990 380 4990 400 { lab=#net6}
N 4910 400 4960 400 { lab=#net7}
N 4960 400 4960 570 { lab=#net7}
N 4960 570 4990 570 { lab=#net7}
N 4420 340 4480 340 { lab=#net2}
N 4010 340 4180 340 { lab=io_analog[2]}
N 4480 360 4480 510 { lab=#net1}
N 4420 510 4480 510 { lab=#net1}
N 4010 510 4180 510 { lab=io_analog[1]}
C {Anchit_Tests/Final_5_NSO.sym} 4760 360 0 0 {name=x3}
C {iopin.sym} 3420 -310 0 0 {name=p1 lab=vdda1}
C {iopin.sym} 3420 -280 0 0 {name=p2 lab=vdda2}
C {iopin.sym} 3420 -250 0 0 {name=p3 lab=vssa1}
C {iopin.sym} 3420 -220 0 0 {name=p4 lab=vssa2}
C {iopin.sym} 3420 -190 0 0 {name=p5 lab=vccd1}
C {iopin.sym} 3420 -160 0 0 {name=p6 lab=vccd2}
C {iopin.sym} 3420 -130 0 0 {name=p7 lab=vssd1}
C {iopin.sym} 3420 -100 0 0 {name=p8 lab=vssd2}
C {ipin.sym} 3440 20 0 0 {name=p9 lab=wb_clk_i}
C {ipin.sym} 3440 50 0 0 {name=p10 lab=wb_rst_i}
C {ipin.sym} 3440 80 0 0 {name=p11 lab=wbs_stb_i}
C {ipin.sym} 3440 110 0 0 {name=p12 lab=wbs_cyc_i}
C {ipin.sym} 3440 140 0 0 {name=p13 lab=wbs_we_i}
C {ipin.sym} 3440 170 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {ipin.sym} 3440 200 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {ipin.sym} 3440 230 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {opin.sym} 3430 330 0 0 {name=p17 lab=wbs_ack_o}
C {opin.sym} 3430 360 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {opin.sym} 3430 480 0 0 {name=p19 lab=la_data_out[127:0]}
C {ipin.sym} 3440 450 0 0 {name=p20 lab=la_data_in[127:0]}
C {ipin.sym} 3440 510 0 0 {name=p21 lab=la_oenb[127:0]}
C {ipin.sym} 3440 620 0 0 {name=p22 lab=io_in[26:0]}
C {ipin.sym} 3440 650 0 0 {name=p23 lab=io_in_3v3[26:0]}
C {opin.sym} 3430 680 0 0 {name=p24 lab=io_out[26:0]}
C {opin.sym} 3430 710 0 0 {name=p25 lab=io_oeb[26:0]}
C {iopin.sym} 3430 800 0 0 {name=p26 lab=gpio_analog[17:0]}
C {iopin.sym} 3430 830 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {iopin.sym} 3430 860 0 0 {name=p28 lab=io_analog[10:0]}
C {iopin.sym} 3430 890 0 0 {name=p29 lab=io_clamp_high[2:0]}
C {iopin.sym} 3430 920 0 0 {name=p30 lab=io_clamp_low[2:0]}
C {ipin.sym} 3440 1000 0 0 {name=p31 lab=user_clock2}
C {opin.sym} 3430 1030 0 0 {name=p32 lab=user_irq[2:0]}
C {lab_pin.sym} 4580 420 2 0 {name=l1 sig_type=std_logic lab=vssa1}
C {lab_pin.sym} 4580 250 2 0 {name=l2 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 5480 -110 2 0 {name=l32 sig_type=std_logic lab=io_analog[6]}
C {Anchit_Tests/esd.sym} 5250 -110 0 0 {name=x1}
C {lab_pin.sym} 5480 60 2 0 {name=l3 sig_type=std_logic lab=io_analog[7]}
C {Anchit_Tests/esd.sym} 5250 60 0 0 {name=x2}
C {lab_pin.sym} 5480 230 2 0 {name=l4 sig_type=std_logic lab=io_analog[5]}
C {Anchit_Tests/esd.sym} 5250 230 0 0 {name=x4}
C {lab_pin.sym} 5480 400 2 0 {name=l5 sig_type=std_logic lab=io_analog[4]}
C {Anchit_Tests/esd.sym} 5250 400 0 0 {name=x5}
C {lab_pin.sym} 5480 570 2 0 {name=l6 sig_type=std_logic lab=io_analog[3]}
C {Anchit_Tests/esd.sym} 5250 570 0 0 {name=x6}
C {Anchit_Tests/esd.sym} 4310 340 2 0 {name=x7}
C {lab_pin.sym} 4310 400 2 0 {name=l7 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 4310 280 2 0 {name=l8 sig_type=std_logic lab=vssa1}
C {Anchit_Tests/esd.sym} 4310 510 2 0 {name=x8}
C {lab_pin.sym} 4310 450 2 0 {name=l9 sig_type=std_logic lab=vssa1}
C {lab_pin.sym} 4310 570 2 0 {name=l10 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 5250 0 2 0 {name=l11 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 5250 170 2 0 {name=l12 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 5250 340 2 0 {name=l13 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 5250 510 2 0 {name=l14 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 5250 -170 2 0 {name=l15 sig_type=std_logic lab=vccd1}
C {lab_pin.sym} 5250 630 2 0 {name=l16 sig_type=std_logic lab=vssa1}
C {lab_pin.sym} 5250 460 2 0 {name=l17 sig_type=std_logic lab=vssa1}
C {lab_pin.sym} 5250 290 2 0 {name=l18 sig_type=std_logic lab=vssa1}
C {lab_pin.sym} 5250 120 2 0 {name=l19 sig_type=std_logic lab=vssa1}
C {lab_pin.sym} 5250 -50 2 0 {name=l20 sig_type=std_logic lab=vssa1}
C {lab_pin.sym} 4010 340 0 0 {name=l21 sig_type=std_logic lab=io_analog[2]}
C {lab_pin.sym} 4010 510 0 0 {name=l22 sig_type=std_logic lab=io_analog[1]}
