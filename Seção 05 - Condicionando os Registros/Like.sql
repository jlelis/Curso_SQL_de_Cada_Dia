/* Selecionando Dados Utilizando as Cl�usulas Where e Like */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE 'A%'  -- Inicia com a letra a
GO


SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE '%A'  -- Termina com a letra a


SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
WHERE
	NOME LIKE '____Sampaio'
GO