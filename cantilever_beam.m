%% Title
% Calculations of cantilever beam under vibration
% Ref:
% Repetto, C. & Roatta, A. & Welti, Reinaldo. (2012). Forced vibrations of a cantilever beam. European Journal of Physics - EUR J PHYS. 33. 1187-1195. 10.1088/0143-0807/33/5/1187. 

%% Defining the variables

clc
clear

E=200e9;        % Modullus of elasticity (Pa)
rho=8220;       % Density (kg/m^3)
b=3e-3;         % Beam width (m)
h=0.508e-3;     % Beam thickness (m)
S=b*h;          % Cross section (m^2)
I=b*h^3/12;     % Second moment of inertia of cross section wrt longitudinal axis (m^4)
L=4.8e-3;        % Beam length (m)
gamma=0.0001;     % Damping coefficient (1/s)
z0=10e-3;       % Amplitude of excitation (m)
% w=1000:30000;         % Frequency (Hz)





%% Natural Frequencies

[wn1,wn2]=BeamNatFreq(h,L,E,rho)

figure
plot(L,wn1/1000,'*')
grid on

%% Stress and Displacement Distributions

figure
plot(15:0.001:20,ResAmp(15000:20000,z0,gamma,L,wn1,rho,S,E,I))

% Maximumm amplitude at resonance
A_res=MaxResAmp(z0,gamma,L,wn1,rho,S,E,I);
% 

figure
plot(wn1/1000,A_res/1000,'o')
grid on


