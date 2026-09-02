%15 minute EV drive cycle
%Negative Currents are regenerative

%time points (seconds)
times = [0 30 90 150 210 240 270 420 510 540 660 780 900]';

%Corresponding Pack Current Requests

current = [0 0 70 160 70 -50 45 100 220 80 -65 55 0]';

% Create values every 0.1 seconds for the 900-second simulation
t = (0:0.1:900)';

% Smoothly connect the defined current points
I = interp1(times, current, t, "linear");

% Create a MATLAB time-series variable for Simulink
Ipack = timeseries(I, t);

