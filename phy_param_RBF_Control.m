clear;
clc;

% Physical Parameter Definition

J = 3.2284E-6;      % Rotor inertia (kg.m^2)
B_0 = 3.5077E-6;    % coefficient of viscous friction at the joint (Nms)
Kb = 0.0274;        % electromotive force constant (V/rad/sec)
Kt = 0.0274;        % motor torque constant (Nm/Amp)
R = 4;              % armature resistance (ohm)
L = 2.75E-6;        % armature inductance (H)

L_0 = 0.1;      % Link length (m)
m = 0.01;       % mass (kg) of the link
G = 9.8;        % Gravity Coeficient (m/s^2)
M_0 = 0.01;     % Load Mass (kg)
R_0 = 0.025;    % Radius of the Load (m)

M = (J/Kt) + ((m*L_0^2)/(3*Kt)) + ((M_0*L_0^2)/Kt) + ((2*M_0*R_0^2)/(5*Kt));
N = ((m*L_0*G) / (2*Kt)) + ((M_0*L_0*G)/Kt);
B = B_0/Kt;

dt = 0.0001;          % sample time 0.1ms

s = tf('s');
G = 1 / (s^3*L*M + s^2*L*B + s^2*R*M + s*L*N +s*Kb + s*R*B + R*N);
Gz = c2d(G, dt, 'tustin');     % convert to z-domain
[num, den] = tfdata(Gz, 'v');

% PD Parameters from Root Locus Controller Design
kp = 44.5;
kd = 13.4;