 % ============================================================
 % FASE 3: Tres leituras, tres classificacoes
 % ============================================================

 clc;
 clear;

 matricula = 2610776;
 chave_b = 4 + mod(matricula, 5); % recuperada da fase 1

 % --- Tres leituras dos sensores danificados ---
 leitura_a = mod(matricula, 11);
 leitura_b = mod(matricula, 13);
 leitura_c = mod(matricula, 17);

 printf('Leituras: %d, %d, %d\n', leitura_a, leitura_b, leitura_c);

 % --- Classificacao da leitura A ---
 if leitura_a < 6
 nivel_a = 3;
 elseif leitura_a < 12
 nivel_a = 5;
 elseif leitura_a < 18
 nivel_a = 7;
 else
 nivel_a = 9;
 end

 % --- Classificacao da leitura B ---
 % COMPLETE: repita a estrutura acima, trocando leitura_a por leitura_b
 % e nivel_a por nivel_b

if leitura_b < 6
 nivel_b = 3;
 elseif leitura_b < 12
 nivel_b = 5;
 elseif leitura_b < 18
 nivel_b = 7;
 else
 nivel_b = 9;
 end


 % --- Classificacao da leitura C ---
 % COMPLETE: repita novamente, agora para leitura_c e nivel_c

if leitura_c < 6
 nivel_c = 3;
 elseif leitura_c < 12
 nivel_c = 5;
 elseif leitura_c < 18
 nivel_c = 7;
 else
 nivel_c = 9;
 end

 % --- Consolidacao ---
 soma = nivel_a + nivel_b + nivel_c;
 digito2 = mod(soma + chave_b, 10);

 printf('Niveis: %d, %d, %d\n', nivel_a, nivel_b, nivel_c);
 printf('Soma dos niveis: %d\n', soma);
 printf('\n>>> FRAGMENTO 2 DE 4 RECUPERADO: %d\n', digito2);
 printf('SELO DA FASE 3: %d\n', mod(soma * 3 + digito2, 100));

