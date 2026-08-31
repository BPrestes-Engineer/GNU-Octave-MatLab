#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 31/08/2026
N.º da Questão: 7
#}
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

tR = [820, 45, 15400,3200]; #Tempo de Reposta
tC = 0;                     #Tempo Convertido

#------------------------>> Processamento-De-Dados <<---------------------------

tC = log10(tR);

#---------------------------->> Saída-De-Dados <<-------------------------------

printf("\n Para os tempos: %dms | A conversão do tempo de resposta na base 10 será: %.4f\n", [tR; tC]);
printf("\n\n");

