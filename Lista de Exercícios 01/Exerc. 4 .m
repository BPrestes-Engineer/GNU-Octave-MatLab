#{
--------------------------------->> Cabeçalho <<--------------------------------

Autor: Bruno Prestes Oliveira
Data: 25/08/2026
Objetivo: Contador de acessos que travou

#}

clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------
#a)
aa = 0;
a = [];
b = 0;
c = [];
d = 0;

#------------------------>> Processamento-De-Dados <<---------------------------
#a)
aa = int8(0);
a(1) = int8(200);
b = int16(200);
c(1) = double(200);

#c)
a(2) = a(1) + int8(50);

#d)
d = int32(7/2);
c(2) = double(7/2);

#---------------------------->> Saída-De-Dados <<-------------------------------
#a)
printf(" a)\n\n int8:   %d | Tipo: %s ", a(1), class(aa));
printf("\n int16:  %d | Tipo: %s ", b, class(b));
printf("\n double: %.0f | Tipo: %s ", c(1), class(c));
printf("\n\n------------------------------------------------------------\n");

#b)
printf(" b)\n\n int8 : min = %d   | max = %d", intmin('int8'), intmax('int8'));
printf("\n int16: min = %d | max = %d", intmin('int16'), intmax('int16'));
printf("\n\n------------------------------------------------------------\n");

#c)
printf(" c)\n\n 200 + 50 em int8 = %d\n\n Esse tipo de dado (int8) só armazena valores até 127 T-T", a(2));
# Não muda nada, o Octave só trava o valor no máximo permitido pela variável, que é 127.
printf("\n\n------------------------------------------------------------\n");

#d)
printf(" d)\n\n Comparando a divisão de 7/2 em int32 e double:\n\n int32 = %d\n double = %.2f ", d, c(2));
printf("\n\n É notório que, embora teoricamente sejam iguais, o programa os atribuem\n valores diferentes, pois o int32 arredonda o 3.5 para um número inteiro.");
printf("\n\n------------------------------------------------------------\n\n");

#e)
#{
 O tipo de dado mais adequado para o problema seria o int16 ou int32,
 visto que eles são capazes de armazenas valores maiores do que o int8 - que é
 considerado uma escolha inadequada para este problema/caso. As consequências
 práticas que esta má escolha traria para o sistema embarcado, seriam a falta de
 confiabilidade no sistema, uma vez que ele estaria mostrando números errados e
 parando de registrar corretamente os acessos de pessoas que passam pela catraca.
#}
