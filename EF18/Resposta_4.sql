SELECT
	men_descricao 'Descrição de Comissão',
    sum(com_valor) 'Total de Comissão'
FROM 
	mensagem m 
		LEFT OUTER JOIN
	comissao c ON m.men_codigo = c.men_codigo
GROUP BY m.men_codigo;