SELECT
	MIN(com_valor) AS Menor, MAX(com_valor) AS Maior
FROM
	comissao
WHERE
	com_valor BETWEEN 1000 AND 5000;