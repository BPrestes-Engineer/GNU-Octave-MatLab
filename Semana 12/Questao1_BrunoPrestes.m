#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 26/10/2026
Objetivo: Compreendendo Gráficos.


#}
close all;
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

n = [2:1:2000];
T1 = 0;
T2 = 0;
T3 = 0;

#------------------------>> Processamento-De-Dados <<---------------------------

T1 = 5 .* n;
T2 = n .* log2(n);
T3 = 0.01 .* (n.^2);

#---------------------------->> Saída-De-Dados <<-------------------------------

subplot(1, 2, 1);
plot(n, T1, 'r-', n, T2, 'g--', n, T3, 'b-.', 'LineWidth', 1.5);
title('Escala Linear');
xlabel('Tamanho de Entrada (n)');
ylabel('Número de Operações');
legend('Algoritmo A (5n)', 'Algoritmo B (n log 2 n)', 'Algoritmo C (0.01 n^2)', 'Location', 'Northwest');
grid on;

subplot(1, 2, 2);
semilogy(n, T1, 'r-', n, T2, 'g--', n, T3, 'b-.', 'LineWidth', 1.5);
title('Escala Logarítmica (Eixo Y)');
xlabel('Tamanho de Entrada (n)');
ylabel('Número de Operações');
legend('Algoritmo A (5n)', 'Algoritmo B (n log 2 n)', 'Algoritmo C (0.01 n^2)', 'Location', 'Northwest');
grid on;

print('Custo_Algoritmo.png', '-dpng');

idx_CA = find(T3 > T1, 1, 'first'); % Pega o 1º índice onde T3 > T1
n_CA = n(idx_CA); % Busca o valor de n correspondente

idx_CB = find(T3 > T2, 1, 'first');
n_CB = n(idx_CB);

fprintf('--- RESULTADOS DA QUESTÃO 1 ---\n');
fprintf('O Algoritmo C passa o Algoritmo A a partir de n = %d\n', n_CA);
fprintf('O Algoritmo C passa o Algoritmo B a partir de n = %d\n', n_CB);
fprintf('Para n = 2000:\n');
fprintf('  Custo Algoritmo A: %.2f operacoes\n', T1(end));
fprintf('  Custo Algoritmo B: %.2f operacoes\n', T2(end));
fprintf('  Custo Algoritmo C: %.2f operacoes\n', T3(end));
