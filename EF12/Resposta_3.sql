SELECT
	pro_pnome,
    pro_unome,
    pro_salario * 0.9 AS Salario_anual_decrementado,
    pro_salario * 0.9 / 12 AS Salario_mensal_decrementado
FROM
	professor;