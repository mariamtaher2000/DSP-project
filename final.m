Fs  = 8000; %sampling frequency
symbol_duration=100e-3; %symbol duration
guard_duration=20e-3; %guard duration 

S='01020934281'; %sequence of DTMF symbols 

% Dial tone generation
xt = [];
for i = 1:numel(S) 
    xt = [xt, sym2TT(S(i))];
end

% Normalize the tones (avoids clipping while writing to wav format)
xt = xt/max(abs(xt));

% Plot tones in time domain
t = (0:1:numel(xt)-1)/Fs;
figure(1)
plot(t, xt)
title('x(t)')
xlabel('Duration (sec)')
ylabel('Magnitude')
grid on
axis tight

%additive white Gaussian noise
var =0.1; %noise variance 
wn = sqrt(var).*randn(1,size(xt,2));
yt=xt+wn; %signal with noise
yt = yt/max(abs(yt)); %normalize to avoid clipping while writing to wav format

%plot the waveform of the signal with noise
figure(2)
plot(t, yt)
title('y(t)')
xlabel('Duration (sec)')
ylabel('Magnitude')
grid on
axis tight

%frequency-domain information
w = -pi:2*pi/length(xt):pi-1/length(xt);
f = w*Fs/2/pi;
Yfn=abs(fftshift(fft(yt/Fs))); %signal with noise in frequency domain
Yf =abs(fftshift(fft(xt/Fs))); %signal in frequency domain

%plot the spectrum of the signal with noise
figure(3)
plot(abs(f), Yfn)
axis([600 1700 0 0.07]) %limit x-axis from 600 to 1700 Hz
title('Y(f) with noise')
xlabel('frequency(HZ)')
ylabel('Magnitude')
grid on

%plot the spectrum of the signal
figure(4)
Yfn_dB = 20*log(Yfn);
plot(abs(f), Yfn_dB) %plot the spectrum in dB
axis([600 1700 -250 0]) %limit x-axis from 600 to 1700 Hz
title('Y(f) in dB with noise')
xlabel('frequency(HZ)')
ylabel('Magnitude')
grid on

% Save tones as .wav file
audiowrite('xt.wav', xt, Fs);
audiowrite('yt.wav', yt, Fs);

%spectrgram plots
nfft= 2^14;
figure(5)
spectrogram(yt, rectwin(16),0.5*16, nfft,Fs)
title('Spectrogram using rectanglar window of size 16')

figure(6)
spectrogram(yt, rectwin(64),0.5*64, nfft,Fs)
title('Spectrogram using rectanglar window of size 64')

figure(7)
spectrogram(yt, rectwin(256),0.5*256, nfft,Fs)
title('Spectrogram using rectanglar window of size 256')

figure(8)
spectrogram(yt, rectwin(1024),0.5*1024, nfft,Fs)
title('Spectrogram using rectanglar window of size 1024')

figure(9)
spectrogram(yt, rectwin(4096),0.5*4096, nfft,Fs)
title('Spectrogram using rectanglar window of size 4096')

figure(10)
spectrogram(yt, blackman(16),0.5*16, nfft,Fs);
title('Spectrogram using blackman window of size 16')

figure(11)
spectrogram(yt, blackman(64),0.5*64, nfft,Fs)
title('Spectrogram using blackman window of size 64')

figure(12)
spectrogram(yt, blackman(256),0.5*256, nfft,Fs)
title('Spectrogram using blackman window of size 256')

figure(13)
spectrogram(yt, blackman(1024),0.5*1024, nfft,Fs)
title('Spectrogram using blackman window of size 1024')

figure(14)
spectrogram(yt, blackman(4096),0.5*4096, nfft,Fs)
title('Spectrogram using blackman window of size 4096')