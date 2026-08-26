#{
------------------------------>> Cabeçalho <<-----------------------------------

Autor: Bruno Prestes Oliveira
Data: 16/08/2026
Objetivo: Verificar a viabilidade de um algoritmo de busca

#}

clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------
# Notação Científica ( e ), ex.: 2e2 = 2*10^2 = 2*100 =

#a)
n = 1e6;                #Nº de Registros.
capacidade = 2.5e9;     #Operações elementares por segundo.
custo = [];             #Custo Estimado por segundo.
tempo = [];             #Tempo Estimado.
e = 0;                  #Contagem de vezes em que a abordagem quadrática é mais lenta que a linear.

#------------------------>> Processamento-De-Dados <<---------------------------

#b)
custo(1) = n;         # 1ª abordagem.
custo(2) = n*log2(n); # 2ª abordagem.
custo(3) = n^2;       # 3ª abordagem.

#c)
tempo(1) =  custo(1) / capacidade; #Tempo de execução em segundos da 1ª abordagem.
tempo(2) =  custo(2) / capacidade; #Tempo de execução em segundos da 2ª abordagem.
tempo(3) =  custo(3) / capacidade; #Tempo de execução em segundos da 3ª abordagem.

#d)
tempo(4) = tempo(3) / 3600; #Tempo de execução da abordagem quadrática em horas.
tempo(5) = tempo(4) / 24;   #Tempo de execução da abordagem quadrática em dias.

#e)
e = tempo(3) / tempo(1); #Contagem de vezes em que a abordagem quadrática é mais lenta que a linear;

#---------------------------->> Saída-De-Dados <<-------------------------------
#b)
printf("\n A abordagem '     n     '  requer  %.2f        operações!", custo(1));
printf("\n A abordagem ' n*Log2(n) '  requer  %.2f       operações!", custo(2));
printf("\n A abordagem '    n^2    '  requer  %.2f  operações!", custo(3));

#c)
printf("\n\n O tempo estimado de execução da 1ª abordagem é de %.3fs !", tempo(1));
printf("\n O tempo estimado de execução da 2ª abordagem é de %.3fs !", tempo(2));
printf("\n O tempo estimado de execução da 3ª abordagem é de %.1fs !", tempo(3));

#d)
printf("\n\n O tempo estimado de execução da 3ª abordagem em horas é de %.3f hora!", tempo(4));
printf("\n O tempo estimado de execução da 3ª abordagem em dias  é de %.3f dias!", tempo(5));

#e)
printf("\n\n A abordagem quadrática ( n^2 ) é %.2f vezes mais lenta que a abordagem linear ( n )!\n\n\n", e);

#{

f)
O gestor da área argumentou que, com um servidor tão potente, a escolha do
algoritmo seria irrelevante. Contudo, ele estava errado, porque se optarem por
seguir com a 3ª abordagem, o algoritmo levaria alguns minutos para localizar o
prontuário. Ele estaria certo se a coordenação optasse por seguir com a 1ª ou
com a 2ª abordagem, pois elas demorariam menos de um segundo para localizar
o prontuário, mas não a 3ª, que levaria 6min e 40s para localizar o prontuário.

#}
