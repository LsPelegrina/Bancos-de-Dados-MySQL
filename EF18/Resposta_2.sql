SELECT
	postal.pos_codigo, pos_localidade, pes_nome
FROM
	postal
		LEFT OUTER JOIN
	pessoa ON postal.pos_codigo = pessoa.pos_codigo
ORDER BY pes_nome ASC;