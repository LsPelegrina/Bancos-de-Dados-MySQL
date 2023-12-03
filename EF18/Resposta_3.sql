SELECT
	pes_nome Pessoa,
    com_valor 'Valor de Comissão',
    men_descricao 'Descrição de Comissão'
FROM 
	pessoa p
		JOIN
	comissao c ON p.pes_codigo = c.pes_codigo
		JOIN
	mensagem m ON c.men_codigo = m.men_codigo
WHERE
	pes_telefone IS NOT NULL;