[audio, fs] = audioread('frase02_2036703.wav');  % Carrega o arquivo de áudio

window = 256;   % Tamanho da janela
noverlap = 128; % Sobreposição entre janelas
nfft = 512;     % Número de pontos da FFT

% Gerar o espectrograma
[s, f, t, p] = spectrogram(audio, window, noverlap, nfft, fs, 'yaxis');

% Converter para dB
p_db = 10*log10(p);

% Plotar o espectrograma
figure;
surf(t, f/1000, p_db, 'EdgeColor', 'none');
axis tight;
view(0, 90);
xlabel('Tempo (s)');
ylabel('Frequência (kHz)');
colorbar;
caxis([-140 -40]);  % Ajustar os limites do dB conforme necessário
title('Frase: Uma índia andava na mata.');
colormap(jet);