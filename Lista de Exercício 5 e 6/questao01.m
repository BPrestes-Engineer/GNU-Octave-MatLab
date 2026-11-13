#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 30/08/2026
Objetivo: Estudo de Estruturas Condicionais
#}
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

ano = input("\n Digite um ano qualquer: ");

#------------------------>> Processamento-De-Dados <<---------------------------

if  mod(ano, 400) == 0

  bissexto = true;

elseif mod(ano, 100) == 0

  bissexto = false;

elseif mod(ano, 4) == 0

  bissexto = true;

else

  bissexto = false;

end

#---------------------------->> Saída-De-Dados <<-------------------------------

if bissexto(true)

  printf("\n\n O ano %d É considerado um ano bissexto !!!\n\n ", ano);

 else

  printf("\n\n O ano %d NÃO É considerado um ano bissexto !!!\n\n ", ano);

end

#{
 Embora 1900 seja divisível
#}
