#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 31/08/2026
N.º da Questão: 5
#}
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

comissao = 0;
valor = 38500.00;
percentual = 3.5;
bonus = 150;

#------------------------>> Processamento-De-Dados <<---------------------------

comissao = valor * percentual / 100 + bonus;

#---------------------------->> Saída-De-Dados <<-------------------------------

printf("\n O valor da Comissão é de %.2f !!!\n\n", comissao);


