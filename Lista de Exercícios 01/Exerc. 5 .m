#{
--------------------------------->> Cabeçalho <<--------------------------------

Autor: Bruno Prestes Oliveira
Data: 25/08/2026
Objetivo:  painel de indicadores com resultados impossíveis

#}

clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------
#a)
taxSucesso = 0; # taxa de sucesso
tempoMedio = 0; # tempo médio por requisição
taxErro = 0;    # taxa de erro
requisicao = 0; # requisições processada
sucesso = 0;    # Quantidade de Requisições bem Sucedidas
tempoTotal = 0; # Tempo total acumulado
erro = 5;       # Total de erros registrados

#------------------------>> Processamento-De-Dados <<---------------------------
#b)
taxSucesso = sucesso / requisicao;
tempoMedio = tempoTotal / requisicao;
taxErro = erro / requisicao;

#---------------------------->> Saída-De-Dados <<-------------------------------
#b)
printf(" b)\n\n Taxa de Sucesso = %.2f", taxSucesso);
printf("\n Taxa de Erro = %.2f", taxErro);
printf("\n Tempo Médio por Requisição = %.2f", tempoMedio);
printf("\n\n------------------------------------------------------------\n");

#c)
printf(" c)\n\n Taxa de Sucesso -> isnan: %d | isinf: %d | isfinite: %d\n NaN (invalidez por ausência de dados.)", isnan(taxSucesso), isinf(taxSucesso), isfinite(taxSucesso));
printf("\n\n Taxa de Erro    -> isnan: %d | isinf: %d | isfinite: %d\n Inf (invalidez por divisão por zero com numerador ≠ 0.)", isnan(taxErro), isinf(taxErro), isfinite(taxErro));
printf("\n\n Tempo Médio     -> isnan: %d | isinf: %d | isfinite: %d\n NaN (invalidez por cálculo indefinido.)", isnan(tempoMedio), isinf(tempoMedio), isfinite(tempoMedio));
printf("\n\n------------------------------------------------------------\n");

#d)
printf(" d)\n\n Taxa de Sucesso = Indefinido (nenhuma requisição processada)");
printf("\n Taxa de Erro = Indefinido (nenhuma requisição processada)");
printf("\n Tempo Médio por Requisição = Infinito (erros sem requisições)");
printf("\n\n------------------------------------------------------------\n");

#{
 e)

 0/0 resulta em NaN (Not a Number), porque é uma operação indefinida.
 k/0, com k ≠ 0, resulta em Inf (infinito), porque matematicamente representa um
 valor que cresce sem limite. Essa distinção exige verificações diferentes:
 isnan para detectar operações indefinidas e isinf para detectar divisões por
 zero com numerador ≠ 0.

 #}
