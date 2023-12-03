-- Utilizando o operador IN
SELECT pes_nome, pos_codigo
FROM pessoa
WHERE pos_codigo IN (SELECT pos_codigo
						FROM postal
						WHERE pos_localidade = 'Lisboa');