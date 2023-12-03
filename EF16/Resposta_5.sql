SELECT
	AVG(pes_salario) 'Média Salarial > 30 anos'
FROM
	pessoa
WHERE
	pes_idade > 30;