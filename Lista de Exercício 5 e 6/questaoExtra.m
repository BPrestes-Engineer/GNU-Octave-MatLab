#{
--------------------------------->> Cabeçalho <<--------------------------------
Autor: Bruno Prestes Oliveira
Data: 30/08/2026
Objetivo:


#}
clear;
clc;
#------------------------>> Declaração-De-Variáveis <<--------------------------

aluno = input("\n Digite o nome do aluno: ", 's');
nota = input("\n\n Digite a nota final (De 0 a 10) dele(a): ");

#------------------------>> Processamento-De-Dados <<---------------------------

if (nota <= 7)

  printf("\n\n Parabéns !!! %s está aprovado(a) !\n\n", aluno);

elseif (nota > 5)

  printf("\n %s precisa de recuperação!\n\n", aluno);

else

  printf("\n %s está REPROVADO!!!\n\n", aluno);

end

#---------------------------->> Saída-De-Dados <<-------------------------------



