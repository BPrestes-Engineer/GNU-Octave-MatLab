 % ============================================================
 % FASE 5: Montagem da senha e abertura do cofre
 % ============================================================

 clc;
 clear;

 matricula = 2610776;
 chave_b = 4 + mod(matricula, 5);

 % --- Preencha com os fragmentos que voce anotou ---
 digito1 = 5;
 digito2 = 8;
 digito3 = 0;

 % --- O quarto digito nasce da combinacao dos anteriores ---
 digito4 = mod(digito1 + digito2 + digito3 + chave_b, 10);

 % --- Montagem da senha de quatro digitos ---
 senha = digito1 * 1000 + digito2 * 100 + digito3 * 10 + digito4;

 printf('=== PAINEL DO COFRE ===\n');
 printf('Fragmentos: %d %d %d %d\n', digito1, digito2, digito3, digito4);
 printf('Senha montada: %04d\n\n', senha);

 % --- Validacao final ---
 if senha >= 1000 && senha <= 9999
 printf('COFRE ABERTO. Senha valida: %04d\n', senha);
 else
 printf('SENHA RECUSADA. Revise seus fragmentos.\n');
 end

 printf('SELO FINAL: %d\n', mod(senha + matricula, 1000));

