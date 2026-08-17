#{
--------------------------------->> Cabeçalho <<--------------------------------

Autor: Bruno Prestes Oliveira
Data: 16/08/2026
Objetivo: Rotina de conferência de valores financeiros

#}

clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

boleto = 0.30;             # Valor do Boleto;
parcela = 0.10;            # Valor das Parcelas;
soma = 0;                  # Soma das Parcelas;
diferenca = 0;             # Diferença absoluta entre a soma obtida e o valor esperado;
resultado = 0;             # Resultado do comparador;
tolerancia = 1e-12;        # Tolerância adequada;
resultadoTolerancia = 0;   # Resultado da comparação com tolerância;
epsMaquina = 0;            # épsilon de máquina = eps (retorna o menor incremento
#                            que 0pode ser representado em ponto flutuante no computador).

#------------------------>> Processamento-De-Dados <<---------------------------

soma = parcela * 3;

resultado = (soma == boleto);

diferenca = abs(soma - boleto);

epsMaquina = diferenca / eps;

resultadoTolerancia = (diferenca < tolerancia);

#---------------------------->> Saída-De-Dados <<-------------------------------

#a)
printf("\n O resultado obtido pela comparação ( == ) entre a soma das parcelas com o valor do boleto é ' %d ' !\n", resultado);

#b)
printf("\n\n O tipo de valor retornado pela comparação ( == ) entre a soma das parcelas com o valor do boleto é ' %s ' !\n", class(soma == boleto));

#c)
format long
printf("\n\n A soma das parcelas é igual a %d !", soma);
printf("\n O valor esperado era %d !", boleto);
printf("\n E a diferença absoluta entre eles é %d !!!\n", diferenca);

#d)
printf("\n\n Comparando, essa diferença é %d vezes menor do que o épsilon de máquina ( eps ) !!!\n", epsMaquina);

#e)
printf("\n\n O resultado da comparação com tolerância é ' %d ' de TRUE, ou seja, está dentro dos parâmetros da tolerância!!!\n\n\n", resultadoTolerancia);

#{

f) O primeiro teste falha porque números reais em ponto flutuante não são
representados exatamente na memória. O valor 0.1, por exemplo, é uma
aproximação binária, e a soma de três aproximações não coincide exatamente
com 0.3. A boa prática é comparar valores reais usando uma tolerância
(|a - b| < eps ou < tolerância definida), nunca com o operador ==.

#}
format short
