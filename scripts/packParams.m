% Initial Pack Parameters for the battery-system model

s.c = 96;
p.c = 20;

vnom.c = 3.7; %V
max.v = 4.2; %V
min.v = 3.0; %V
cap.c = 5.0; %Ah
intres.c = 0.015; %Ohms

SOC.i = .9; 
temp.i = 25; % Degrees C
temp.amb = 25; % Degrees C

%Calculations

cap.p = cap.c*p.c;
intres.p = intres.c*(s.c/p.c); %ohms
vnom.p = vnom.c*s.c; %V
energy.p = vnom.p*cap.p; %kWh

%Thermal Model
Rth = .01 % (Degrees C*Seconds)/Joules, Thermal Resistance, Controls how easily the pack gets rid of heat.
Cth = 1.25e5 %J/C Thermal Mass Lumped


% ---- SOC-to-voltage lookup data ----
soc = [0 0.1 0.2 0.4 0.6 0.8 0.9 1.0];
v.cell = [3.00 3.25 3.45 3.60 3.72 3.88 4.02 4.20];







