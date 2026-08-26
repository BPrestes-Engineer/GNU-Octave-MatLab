% ============================================================
% FASE 2: Recuperacao do primeiro fragmento
% ============================================================

clc;
clear;

matricula = 2610776;   % use a MESMA matricula da fase 1

% --- Leitura recuperada do terminal ---
leitura = mod(matricula, 24);   % resultado entre 0 e 23
printf('Leitura recuperada: %d\n', leitura);

% --- Classificacao por faixa de operacao ---
% Faixa madrugada (0 a 5)  --> nivel 3
% Faixa manha (6 a 11)     --> nivel 5
% Faixa tarde (12 a 17)    --> nivel 7
% Faixa noite (18 a 23)    --> nivel 9

if leitura < 6
    nivel = 3;
elseif leitura < 12
    nivel = 5;
elseif leitura < 18
    nivel = 7;
else
    nivel = 9;
end

digito1 = nivel;

printf('Nivel identificado: %d\n', nivel);
printf('>>> FRAGMENTO 1 DE 4 RECUPERADO: %d\n', digito1);
printf('SELO DA FASE 2: %d\n', mod(leitura * 10 + digito1, 100));

