-- Usando operador EXISTS
SELECT pes_nome, pos_codigo
FROM pessoa
WHERE EXISTS (SELECT *
				FROM postal
                WHERE pessoa.pos_codigo = postal.pos_codigo AND
                pos_codigo BETWEEN 1500 AND 2500); 