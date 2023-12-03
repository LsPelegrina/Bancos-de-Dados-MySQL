SELECT
	pes_nome Nome, pos_localidade Localidade
FROM
	pessoa
		JOIN
	postal USING (pos_codigo);