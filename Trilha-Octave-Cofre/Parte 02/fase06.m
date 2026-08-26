 matricula = 2610776;
 chave_a = 3 + mod(matricula, 7);
 chave_b = 4 + mod(matricula, 5);

 alerta = (chave_a > 5) && (chave_b > 5); % complete com && ou ||

if alerta
 valor6 = 5;
 else
 valor6 = 2;
 end

 printf('Alerta: %d | Valor 6: %d\n', alerta, valor6);

