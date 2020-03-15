clear;close all;clc;

%========== Load Signal =================
load('Your_Signal.mat');      % ecg signal for testing the filters (Fs=360)

%========= Filtering =====================
filtered_PL=Notch('Your_Signal.mat');               % filtering power line noise
filtered_BL=HPF('Your_Signal.mat');                 % filtering base line noise

%========= Powerline Filtering Result =======================
figure;
plot(Your_Signal);
hold on 
grid on
plot(filtered_PL);
title('Chebyshev_II Notch filtering')
legend('Noisy ECG (Power Line Noise)','Filtered ECG')
xlabel('Frequency (Hz)')
ylabel('Amplitude')
hold off


%========= Baseline Filtering Result =======================
figure;
plot(Your_Signal);
hold on 
grid on
plot(filtered_BL);
title('Elliptical high pass filtering')
legend('Noisy ECG (Base Line Noise)','Filtered ECG')
xlabel('Frequency (Hz)')
ylabel('Amplitude')
hold off








