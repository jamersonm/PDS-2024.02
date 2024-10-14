% Carregar o arquivo
[audio_data, fs] = audioread('frase01_2263750.wav');

% Vetor tempo
t = (0:length(audio_data)-1)/fs;

% Plot
figure;
plot(t, audio_data);
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Frase: Recebi nosso amigo para almoçar.');
grid on;

% Ajustar os limites do eixo x para mostrar de 0 a 0.5 segundos
xlim([0 4]);

% Definir os ticks do eixo
xticks(0:0.5:4); 

% Ajustar os limites do eixo y com base no valor máximo da função
ylim([-.3 .35]); % Define o limite do eixo y do mínimo ao máximo

yticks(-.3:0.05:.35);
