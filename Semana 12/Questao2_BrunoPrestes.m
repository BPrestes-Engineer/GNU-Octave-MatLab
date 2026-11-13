#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 26/10/2026
Objetivo: Compreender gráficos 3D


#}
close all;
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

x = [0:0.05:4];
y = [0:0.05:3];

[X, Y] = meshgrid(x, y);


#------------------------>> Processamento-De-Dados <<---------------------------

T = 40 + 35 .* exp(-((X - 2).^2 + (Y - 1).^2) ./ 2);

#---------------------------->> Saída-De-Dados <<-------------------------------

subplot(1, 2, 1);
surf(X, Y, T);
title('Superficie de Temperatura da Placa');
xlabel('Eixo X (cm)');
ylabel('Eixo Y (cm)');
zlabel('Temperatura (°C)');
colorbar;

subplot(1, 2, 2);
contour(X, Y, T);
title('Curvas de Nível da Placa');
xlabel('Eixo X (cm)');
ylabel('Eixo Y (cm)');
colorbar;

[Tmax, k] = max(T(:));
x_max = X(k);
y_max = Y(k);

pct_alta_temp = mean(T(:) > 70) * 100;

print('mapa_temperatura.png', '-dpng');

fprintf('--- RESULTADOS DA QUESTÃO 2 ---\n');
fprintf('Temperatura Maxima: %.2f °C\n', Tmax);
fprintf('Ocorre nas coordenadas: X = %.2f cm, Y = %.2f cm\n', x_max, y_max);
fprintf('Percentual da placa acima de 70°C: %.2f%%\n', pct_alta_temp);
