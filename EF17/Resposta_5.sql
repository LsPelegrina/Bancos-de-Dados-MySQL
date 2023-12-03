SELECT pes_nome, pes_salario
FROM pessoa
WHERE pes_salario = (SELECT MIN(pes_salario)
						FROM pessoa);