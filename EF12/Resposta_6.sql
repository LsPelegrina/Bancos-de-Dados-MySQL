SELECT 
	pre_nome, sal_codigo, tisa_descricao
FROM
	predio,
    sala,
    tipo_sala
WHERE
	predio.pre_codigo = sala.pre_codigo
		AND sala.tisa_codigo = tipo_sala.tisa_codigo
        AND tisa_descricao = 'Teórica';