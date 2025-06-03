function x = sym2TT(S)
%this function generates a 100ms time-domain signal 
%corresponding to a given DTMF symbol S

Fs  = 8000; %sampling frequency 
symbol_duration=100e-3;
guard_duration=20e-3;

% Initialize a vector for Pause in between the tones
guard = zeros(1, guard_duration*Fs);

% Initialize a vector for tone
xo = zeros(1, symbol_duration*Fs);
xo(1) = 1;

% Touch-tone frequencies
raw_freq = [697, 770, 852, 941];        % Low frequency group
col_freq = [1209, 1336, 1477, 1633];    % High frequency group

dtmf = [ ['1', '2', '3' ,'A'];      %DTMF symbols 
         ['4', '5', '6' ,'B'];
         ['7', '8', '9' ,'C'];
         ['*', '0', '#' ,'D'];
       ];
   
x = []; %for signal generation

[low_freq_index,high_freq_index]=find(dtmf==S); %find high and low frequency tones of symbol S

f1 = col_freq(high_freq_index); %high frequency tone
f2 = raw_freq(low_freq_index); %low frequency tone

H_low = cos(2*pi*f1*(0:symbol_duration*Fs-1)/Fs);
H_high =cos(2*pi*f2*(0:symbol_duration*Fs-1)/Fs);
    
k = H_low + H_high;
X = [k, guard]; 
x = [x, X]; %time-domain signal corresponding to the symbol S