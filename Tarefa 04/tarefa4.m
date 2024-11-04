[audio, fs] = audioread('frase02_2263750.wav');  % Carrega o arquivo de áudio

window = hamming(64);    % Tamanho da janela ajustado para melhorar a resolução de frequência
noverlap = 50;  % Alta sobreposição para suavizar as transições temporais
nfft = 1024;      % FFT maior para uma melhor definição das frequências

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

% Adicionar a barra de cores (legenda) à direita
c = colorbar;
ylabel(c, 'Potência/Frequência (dB/Hz)');  % Rótulo da barra de cor

% Ajustar os limites do dB conforme necessário
caxis([-140 -40]);

% Título da imagem
title('Frase: João deu pouco dinheiro.');

% Usar o colormap 'jet' para a escala de cores
colormap(jet);
