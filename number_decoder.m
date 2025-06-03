[y,Fs]=audioread('yt.wav');

symbol_duration=100e-3;
N = symbol_duration*Fs; %number of samples

dtmf = [ ['1', '2', '3', 'a'];
         ['4', '5', '6', 'b'];
         ['7', '8', '9', 'c'];
         ['*', '0', '#', 'd'];
       ];

f = [697 770 852 941 1209 1336 1477 1633];
k = round(f/Fs*N); % Goertzel uses 1-based indexing

number = [];

for i=0:10
    data = y(1+960*i:800+960*i);

    dft_data = goertzel(data, k+1);

    stem(f,abs(dft_data))

    [~,freq_idx] = sort(abs(dft_data),'descend');
    max_freq_idx = freq_idx(1:2);

    row = min(max_freq_idx);
    col = max(max_freq_idx)-4;

    symbol = dtmf(row,col);
    number = [number symbol];
end

% comarison between the genarate and the original phone number
for i=1:1:length(S)
m(i) = ~strcmp(number(i),S(i));
end
if nnz(m) ==0 
    disp('the two numbers are identical')
else
    disp(['there is error in ', num2str(nnz(m)), ' numbers'])
end