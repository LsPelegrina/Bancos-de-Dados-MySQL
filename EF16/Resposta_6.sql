SELECT 
	pes_nome AS Nome,
    AVG(com_valor) AS 'Média da Comissão'
FROM
	pessoa p,
    comissao c
WHERE
	p.pes_codigo = c.pes_codigo
		AND p.pes_codigo = 14;