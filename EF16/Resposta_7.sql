SELECT
	DISTINCT pes_nome AS Nome
FROM 
	comissao c,
	pessoa pe
WHERE
	c.pes_codigo = pe.pes_codigo
		AND men_codigo > 35;