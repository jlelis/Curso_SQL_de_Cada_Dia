/* Exerc�cio Cap�tulo 07 */


/* 1 - Traga numa consulta:

1. A quantidade de professores que estuda em cada faculdade - atrav�s de agrupamento.

2. Nomeie as colunas de resultado usando 'ALIAS' para: 'Faculdade de Forma��o' e 'Qtde professores'

3. Ordene em ORDEM CRESCENTE pelo nome da faculdade

Ex:

Faculdade de Forma��o       | Quantidade

Universidade de Brasilia      2 */
SELECT
	NOME_FACULDA_DE_FORMACAO			AS [FACULDADE DE FORMA��O]	
  , COUNT(NOME)							AS [QUANTIDADE DE PROFESSORES]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
	NOME_FACULDA_DE_FORMACAO
ORDER BY
	NOME_FACULDA_DE_FORMACAO
GO


/* 2 - Usando o exerc�cio 1 como exemplo, agrupe tamb�m pelo sexo.

Ex:

Faculdade de Forma��o       | Sexo | Quantidade

Universidade de Brasilia      M       2 */
SELECT
	NOME_FACULDA_DE_FORMACAO			AS [FACULDADE DE FORMA��O]
  , SEXO
  , COUNT(NOME)							AS [QUANTIDADE DE PROFESSORES]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
	NOME_FACULDA_DE_FORMACAO
  , SEXO
ORDER BY
	NOME_FACULDA_DE_FORMACAO
  , SEXO
GO


/* 3 - Descubra o erro no comando abaixo

SELECT especialidade,nomefaculdadeformacao

FROM PROFESSOR

GROUP BY especialidade */
SELECT
	ESPECIALIDADE
  , NOME_FACULDA_DE_FORMACAO
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GROUP BY
	ESPECIALIDADE
  , NOME_FACULDA_DE_FORMACAO
GO