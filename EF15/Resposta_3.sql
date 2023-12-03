SELECT
	*
FROM
	comissao
WHERE
	pes_codigo < 40
ORDER BY pes_codigo, com_valor DESC;