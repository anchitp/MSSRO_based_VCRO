[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![CI](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml) [![Caravan Build](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml)

---
# MSSRO-based VCRO (An SSCS PICO Project)
A high-performance, separately driven, noise cancelling, skew-based Voltage Controlled Ring-Oscillator designed in the SKY130 Process.
## Table of Contents
1. Block Diagram
2. Circuit Diagram
3. Project Description
4. Design Specifications
5. Schematic Diagram
6. Layout
7. Simulation Results
8. References

## Block Diagram
|**(a) A general skew based voltage controlled oscillator (VCO)**| **(b) Precharge/discharge based delay cell**|
|---          |----          |
|![Block_A](https://github.com/anchitp/MSSRO_based_VCRO/blob/main/docs/plots/block_diagram.svg)|![Block_B](https://github.com/anchitp/MSSRO_based_VCRO/blob/main/docs/plots/precharge_predischarge.svg)|


## Circuit Diagram
|**(c) Connection mechanism for the design of 5-stage NSO based voltage controlled ring oscillator**|
|---          |
|![Block_C](https://github.com/anchitp/MSSRO_based_VCRO/blob/main/docs/plots/architecture.svg)|


## Project Description
Modern communication systems are evolving continuously and increasing exponentially and require high-performance and low-noise oscillators within the allowed power budget. Oscillators are critical components of communication systems and processors since they ensure that all data flows are accurately synchronized and/or modulated. Therefore, a high-performance (with an oscillation frequency equivalent to a 3-stage conventional RO (CRO)) oscillator equipped with noise suppression, wide tuning range, and asymmetric/symmetric load/driver skew-based VCRO is proposed for the first time. This architecture is a potential candidate to provide possible solutions for some frequently encountered design issues in oscillator design. It also serves as a preferable candidate for the design of a VCO-based ADC, especially when a large number of RO  stages are required. The proposed design not only ensures an oscillation frequency equivalent to that of a 3-stage CRO but also ensures a large number of stages in the design. Also, it can be employed in generating multiphase signals through injection locking techniques/frequency synthesizers.  

The VCO delay-cell stage is a combination of a skew-based inverter proposed in [1]  and additionally designed top/bottom drive circuits to achieve symmetrical variation in output transitions, as shown in Fig. (a). It consists of 3 main sub-blocks:

1) **Block A**: Biasing Circuit, consisting of diode-connected transistors (M<sub>P_CB</sub>, M<sub>N_CB</sub>)

2) **Block B**: Delay Cell core, consisting of a top drive (M<sub>11</sub>, M<sub>12</sub>), a bottom drive (M<sub>21</sub>, M<sub>22</sub>), and the skew-based inverter core (M<sub>P</sub>, M<sub>N</sub>)

3) **Block C**: Level Shifter, basically, a Common Source Amplifier consisting of (M<sub>P_LS</sub>, M<sub>N_LS</sub>)

The control voltage signal (V<sub>control</sub>) is provided to the NMOS transistor, which drives the output falling transition (M<sub>12</sub>), while a signal of (V<sub>dd</sub> – V<sub>control</sub>) is provided to the PMOS transistor, which drives the output rising transition (M<sub>22</sub>), with a Common Source Amplifier (CSA) to map the signal Vcontrol to (V<sub>dd</sub> – V<sub>control</sub>). The transistors M<sub>11</sub> and M<sub>21</sub> are based at fixed drain currents I<sub>P_FIX</sub> and I<sub>N_FIX</sub> by appropriately sizing diode-connected transistors M<sub>P_CB</sub> and M<sub>N_CB</sub>, respectively. A  variation in Vcontrol results in a variation in the transistor currents I<sub>N_Cont</sub> and I<sub>P_Cont</sub>, which alters the discharging/charging rate of the total output capacitance (C<sub>P</sub>+C<sub>L</sub>). This is the essence of the frequency control mechanism for our design, similar to the one in [3]. The core delay cell (Block B) can be replaced by Blocks equipped with Pre-charge (PC)/Pre-discharge (PD) transistors (M<sub>PC</sub>/M<sub>PD</sub>) through feedforward techniques for symmetric output transitions, as shown in [2]. Additionally, fine-tune transistors M<sub>P_FT</sub> and M<sub>N_FT</sub> are introduced in series with the PC/PD transistors to exercise control over the base output rise/fall transition times and the voltage sensitivity by adjusting another control input V<sub>FINE_TUNE</sub>, as shown in Fig. (b).

The individual single-ended delay cells outputs and inputs are connected to each other to form NSO/PSO architectures, resulting in (3N-1)/(3N+1) number of VCRO stages, as shown in Fig. (c). As explained in [1], N 3-stage coupled oscillator loops function out of phase to produce a sustained switching output waveform, oscillating at a frequency nearly equal to the one generated by a 3-stage CRO.    

The proposed VCO architecture exhibits a fixed phase noise profile for a specific offset frequency, even when V<sub>control</sub> is varied across a significant portion of its tuning range. This property is not delayed cell-dependent and is valid for any input skew, even when the skew is reduced to 0. Considering a case when Vcont is given directly to M<sub>12</sub> and fed through a CSA for M<sub>22</sub>, phase noise remains fixed with V<sub>control</sub> till it rises up to a critical value (V<sub>critical</sub>), for an output frequency f<sub>critical</sub>. The phase noise at the output is suppressed primarily because of strong attenuation at voltages below the critical control signal and corresponding frequencies higher than f<sub>critical</sub>. At frequencies lower than the critical frequency, however, the magnitude of the delay cell shaping function allows phase noise at the input to appear at a delay cell's output with minimal attenuation, resulting in a noticeable spike in phase noise.

## Design Specifications

|Parameters|Intended|Achieved (pre-layout)|Achieved (post-layout)<sup>*</sup>|
|------------------| -----|---------------------------|-----------------------|
|Tuning Range (GHz)|1|1.47|0.63|
|Center Frequency (GHz)|2.5|2.235|1.625|
|Area (mm<sup>2</sup>)|<0.1|-|0.0208|
|Supply Voltage|1.8|1.8|-|

<sup>*</sup>Obtained after extracting parasitic capacitances

## Schematic Diagram
**5-Stage NSO with Pre-Discharge (PD)**
![Sch_1](https://github.com/anchitp/Project_VCO/blob/main/docs/plots/Schematic.jpg)

## Layout
![Layout_1](https://github.com/anchitp/Project_VCO/blob/main/docs/plots/Layout.jpg)
![Buff_Layout](https://github.com/anchitp/Project_VCO/blob/main/docs/plots/Buffer_Layout.jpg)

## Simulation Results
### Pre-Layout
#### Output Voltage
![Out_1](https://github.com/anchitp/Project_VCO/blob/main/docs/plots/PreLayout_Outputs.jpg)

#### Oscillation Frequency vs Control Voltage
![Freq_1](https://github.com/anchitp/Project_VCO/blob/main/docs/plots/PreLayout_Linearity.jpg)

### Post-Layout
#### Output Voltage
![Out_2](https://github.com/anchitp/Project_VCO/blob/main/docs/plots/PostLayout_Outputs.jpg)

#### Oscillation Frequency vs Control Voltage
![Freq_2](https://github.com/anchitp/Project_VCO/blob/main/docs/plots/PostLayout_Linearity.jpg)

## References
[1] N. Mishra et al., "Design and Realization of High-Speed Low-Noise Multi-Loop Skew-Based ROs Optimized for Even/Odd  Multi-Phase Signals," IEEE Trans. Circuits Syst. II: Express Briefs, vol. 67, no. 11, pp. 2352-2356, Nov. 2020".<br/><br/>
[2] N. Mishra et al., "Delay Modulation in Separately Driven Delay Cells Utilized for the Generation of High-Performance Multiphase Signals Using ROs," in IEEE Transactions on Circuits and Systems II: Express Briefs, doi: 10.1109/TCSII.2021.3081829.<br/><br/>
[3] B. Razavi, Design of CMOS Phase-Locked Loops: From Circuit Level to Architecture Level. Cambridge: Cambridge University Press, 2020. 
