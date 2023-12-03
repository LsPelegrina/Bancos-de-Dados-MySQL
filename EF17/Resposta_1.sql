-- utilizando o operador ALL
SELECT pes_nome, pes_idade
FROM pessoa
WHERE pos_codigo <> ALL (SELECT pos_codigo
							FROM postal
                            WHERE pos_localidade = 'Lisboa');
                            
-- Utilizando o operador ANY
SELECT pes_nome, pes_idade
FROM pessoa
WHERE pos_codigo = ANY (SELECT pos_codigo
							FROM postal
                            WHERE pos_localidade <> 'Lisboa');