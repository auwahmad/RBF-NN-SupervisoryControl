# RBF-NN-SupervisoryControl

## Introduction
A PD Controller Design was designed for Single Link Robotic Joint with a comparision between Root Locus and Radial Baise Function Neural Network as a Supervisory Control.

## System Model
In this example, a single-link direct-drive manipulator is actuated by a DC motor as described above. The schematic of the electromechanical system is as following:
![image](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/e3e8df24-08af-4362-860b-9ff445d759c3)

The mechanical dynamics are assumed to be of the form [1]:
![image](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/d7f58b78-ac20-4da2-a517-744e301f5fde)

The electrical subsystem dynamics for the permanent magnet brush dc motor are assumed to be: 
![image](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/3004f001-97dd-4ad6-9a05-cb64c6453c8e)

For this example, we will assume the following values for the Robotic Load
- Link Length = 10cm;     
- Link Mass = 10gram;
- Load Radius = 2.5cm;
- Load Mass = 10gram;    

General RBF network structure
![RBF - NN General Structure](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/d0a32a60-c309-45cd-8f6c-44b0f7d213d1)

[1-4-1] RBF NN structure was used for the given problem
![RBF - NN Structure  1-4-1](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/e85f807c-f04a-494a-abda-3df40e6b888d)

Step Response Comparison using MATLAB Live Script
![RBF NN Supervisory Control - MATLAB Live Script](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/c27b667c-6237-4a9d-8832-5590209ce482)

Simulink Model was developed to have much more inituitive approach and control over the system input
![Simulink Model RBF NN Supervisory Control](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/84045162-c9ce-40bb-a054-60098dfdb05a)

Simulink Results for step response and Square-wave tracking 
![Simulink Scopes - RBF NN Supervisory Control](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/f2128ef7-c90e-411b-bf65-d385afba8d1e)
![RBF NN Supervisory Control - Square Wave Tracking - Simulink](https://github.com/auwahmad/RBF-NN-SupervisoryControl/assets/70074147/385c96ee-da69-4a99-aacf-e47b48bdf46d)

## References
D. M. Dawson, Carroll, and M. Schneider, “Integrator Backstepping Control of a Brush DC Motor Turning a Robotic Load,” IEEE Trans. Contr. Sys. Tech., vol. 2, no. 3, pp. 233-244, Sept. 1994.
Control Tutorials for MATLAB & Simulink
