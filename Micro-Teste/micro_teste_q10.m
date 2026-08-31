#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 31/08/2026
N.º da Questão: 10
#}
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

A = [4, 2; 1, 3];
B = [2, 0; 1, 5];
soma = 0;

#------------------------>> Processamento-De-Dados <<---------------------------

soma = A + B;
multElemento = A .* B;
multMatriz = A * B;

#---------------------------->> Saída-De-Dados <<-------------------------------

printf("\n (i) SOMA de A + B = %d", soma);

printf("\n\n (ii) MULTIPLICAÇÃO DOS ELEMENTOS (A .* B) = %d", multElemento);

printf("\n\n (iii) MULTIPLICAÇÃO MATRICIAL (A * B) = %d", multMatriz);

printf("\n\n (iv) TRANSPOSTA DE A = %d", A');
printf("\n\n");

#{
---------------> EXPLICAÇÃO DA DIFERENÇA ENTRE (ii) E (iii):

O (.*) multiplica direto só os números que estão na mesma posição;
O (*)  multiplica a linha da primeira matriz pela coluna da segunda e soma.

#}
