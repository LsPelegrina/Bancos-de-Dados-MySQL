-- Utilizando o operador IN
SELECT pes_nome, pe.pos_codigo, pos_localidade
FROM pessoa pe, postal po
WHERE pe.pos_codigo = po.pos_codigo AND
		pe.pes_codigo IN (SELECT c.pes_codigo
							FROM comissao c
                            WHERE c.pes_codigo = pe.pes_codigo);