SELECT
	sala.sal_codigo, tur_codigo, ens_dia, hor_horario
FROM
	ensalamento,
    sala
WHERE
	ensalamento.sal_codigo = sala.sal_codigo
		AND ens_dia = 4;