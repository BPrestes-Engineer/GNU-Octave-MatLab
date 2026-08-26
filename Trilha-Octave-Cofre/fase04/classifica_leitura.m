 % ============================================================
 % Funcao que classifica uma leitura em nivel de operacao
 % Salve este arquivo com o nome exato: classifica_leitura.m
 % ============================================================

 function nivel = classifica_leitura(leitura)

 if leitura < 6
 nivel = 3;
 elseif leitura < 12
 nivel = 5;
 elseif leitura < 18
 nivel = 7;
 else
 nivel = 9;
 end

 end

