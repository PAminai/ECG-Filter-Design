function y = Chebyshev_II(x)
%CHEBYSHEV_II Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 8.5 and the DSP System Toolbox 9.0.
% Generated on: 02-Feb-2020 13:14:05

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    %
    % N     = 4;    % Order
    % Fstop = 0.5;  % Stopband Frequency
    % Astop = 60;   % Stopband Attenuation (dB)
    % Fs    = 360;  % Sampling Frequency
    %
    % h = fdesign.highpass('n,fst,ast', N, Fstop, Astop, Fs);
    %
    % Hd = design(h, 'cheby2', ...
    %     'SystemObject', true);
    
    Hd = dsp.BiquadFilter( ...
        'Structure', 'Direct form II', ...
        'SOSMatrix', [1 -1.99993499842341 1 1 -1.97753772973536 ...
        0.978406843801627; 1 -1.99998884734247 1 1 -1.94784923062796 ...
        0.948652828673679], ...
        'ScaleValues', [0.989002215060054; 0.974128230855046; 1]);
end

y = step(Hd,x);

