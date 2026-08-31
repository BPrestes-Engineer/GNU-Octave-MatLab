#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 31/08/2026
N.º da Questão:
#}
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

vendas = [12, 19, 8, 25, 14, 30];
dias = 1:length(vendas);
media = mean(vendas);
max = max(vendas);
min = min(vendas);

#------------------------>> Processamento-De-Dados <<---------------------------

indice = find(vendas < media);
diaAbaixo = dias(indice);
valorAbaixo = vendas(indice);

#---------------------------->> Saída-De-Dados <<-------------------------------

printf("\n Média de vendas: %.2f unidades\n", media);
printf(" Maior volume:    %d unidades\n", max);
printf(" Menor volume:    %d unidades\n", min);
printf("\n\n ---------------------> VENDAS ABAIXO DA MÉDIA <---------------------\n");
printf("\n Dia %d: %d unidades\n", [diaAbaixo; valorAbaixo]);
printf("\n\n");

