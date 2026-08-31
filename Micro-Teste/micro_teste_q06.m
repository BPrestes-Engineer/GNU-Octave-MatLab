#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 31/08/2026
N.º da Questão: 2
#}
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

Mo = 4000;
r = 0.08;
M = 0;
anos = [0:10];

#------------------------>> Processamento-De-Dados <<---------------------------

M = Mo * exp( r * anos );

#---------------------------->> Saída-De-Dados <<-------------------------------

printf("\n Valor do Montante no %dº ano = %.2f", [ anos; M ]);
printf("\n\n");

