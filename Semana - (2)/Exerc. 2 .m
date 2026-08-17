#--------------------------------> Cabeçalho <----------------------------------
#Autor: Bruno Prestes Oliveira
#Data: 10/08/2026
#Objetivo: Calcular o Custo energético de um laboratório de informática, podendo
#          simular outros cenários também.

clear;
clc;
#-------------------------------------------------------------------------------
#Declaração-De-Variáveis

numeroMaquinas = input(' Quantos Computadores estão sendo utilizados?:  ');
horasUsoDiario = input(' Quantas horas, em média, cada computador é utilizado diariamente?:  ');
consumoMedio = 0.35; #De w(Watzs) para Kw(KiloWatzs)
diasMes = 22;
tarifa = 0.92; #Por KwH
tributo = 0.3;
consumoMensal = 0;
custoMensal = 0;
custoMensalTributo = 0;
custoMaquina = 0;
custoAnual = 0;

#-------------------------------------------------------------------------------
#Processamento-De-Dados

  consumoMensal = numeroMaquinas * consumoMedio * horasUsoDiario * diasMes;

  custoMensal = consumoMensal * tarifa;

  custoMensalTributo = custoMensal * ( 1 + tributo );

  custoAnual = custoMensalTributo * 12;

  custoMaquina = custoMensalTributo / numeroMaquinas;

#-------------------------------------------------------------------------------
#Saída-De-Dados

printf('\n\n-------------------------------------------------------------\n\n\n');

printf(' O Consumo Mensal é igual a %.2f KwH.\n\n', consumoMensal);

printf(' O Custo Mensal sem Tributação é igual a R$%.2f.\n\n', custoMensal);

printf(' O Custo Mensal com Tributação é igual a R$%.2f.\n\n', custoMensalTributo);

printf(' O Custo Anual é igual a R$%.2f.\n\n', custoAnual);

printf(' O Custo por Maquina é igual a R$%.2f.\n\n', custoMaquina);

printf('\n\n-------------------------------------------------------------\n\n\n');

printf(' Format Short:\n ');
consumoMensal

printf('\n\n Format Long:\n ');
format long
consumoMensal

#{
Ao observar os dois formatos, é notório que o format short possui menos casas
decimais do que o format long. Logo, conclui-se que essa diferença seria relevante
em cenários onde a precisão matemática é obrigatória, como na projeção de uma
aeronave, por exemplo.
#}

format short
