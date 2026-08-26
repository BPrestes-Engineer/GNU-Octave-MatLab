 % ============================================================
 % FASE 1: Credenciamento
 % Aluno: <seu nome>
 % ============================================================

 clc
 clear

% --- SUBSTITUA PELA SUA MATRICULA REAL (sem pontos e sem tracos) ---
matricula = 2610776;

% --- Chaves de acesso derivadas da credencial ---
chave_a = 3 + mod(matricula, 7); % assume valores de 3 a 9
chave_b = 4 + mod(matricula, 5); % complete: deve resultar de 4 a 8
codigo = mod(matricula, 97); % identificador do investigador

% --- Relatorio de credenciamento ---
printf('=== TERMINAL DE ACESSO ===\n');
printf('Credencial informada : %d\n', matricula);
printf('Chave A : %d\n', chave_a);
printf('Chave B : %d\n', chave_b);
printf('Codigo investigador : %d\n', codigo);

printf('\nSELO DA FASE 1: %d\n', mod(chave_a + chave_b + codigo, 100));

