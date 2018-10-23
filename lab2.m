clear all;
close all;

X = csvread('data_2.csv',2,4);
Y=csvread('data3.csv',2,4);
rng default
Fs = 1;
x = X(:,1);
N = length(x);
xdft = fft(x);
xdft = xdft(1:N/2+1);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;



y = Y(:,1);
N = length(y);
xdft = fft(y);
xdft = xdft(1:N/2+1);
psdx2 = (1/(Fs*N)) * abs(xdft).^2;
psdx2(2:end-1) = 2*psdx2(2:end-1);
freq2 = 0:Fs/length(y):Fs/2;

loglog(freq,psdx,'r');
hold on;
loglog(freq2,psdx2,'b');



grid on;
title('Periodogram Using FFT')
xlabel('Frequency (kHz)')
ylabel('Power/Frequency (dB/kHz)')
