 % ============================================================
 % FASE 4: A receita do professor
 % ============================================================

 clc;
 clear;

 matricula = 2610776;
 chave_a = 3 + mod(matricula, 7);
 codigo = mod(matricula, 97);

 % --- Verificacao: a funcao reproduz o resultado da fase 3? ---
 leitura_a = mod(matricula, 11);
 leitura_b = mod(matricula, 13);
 leitura_c = mod(matricula, 17);

 soma_func = classifica_leitura(leitura_a) ...
 + classifica_leitura(leitura_b) ...
 + classifica_leitura(leitura_c);

 printf('Soma obtida com a funcao : %d\n', soma_func);
 printf('Soma anotada na fase 3 : 13\n');

 % --- Recuperacao do terceiro fragmento ---
 leitura_codigo = mod(codigo, 24);
 nivel_codigo = classifica_leitura(leitura_codigo);

 digito3 = mod(nivel_codigo * 3 + chave_a, 10);

 printf('\nLeitura do codigo : %d\n', leitura_codigo);
 printf('Nivel do codigo : %d\n', nivel_codigo);
 printf('\n>>> FRAGMENTO 3 DE 4 RECUPERADO: %d\n', digito3);
 printf('SELO DA FASE 4: %d\n', mod(soma_func + nivel_codigo + digito3, 100));

