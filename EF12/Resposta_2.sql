SELECT 
	tur_codigo, dis_codigo, tudi_modalidade
FROM
	turma_disciplina
WHERE
	tudi_modalidade != 'Presencial';