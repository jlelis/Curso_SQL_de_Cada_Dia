/* Selecionando Dados da Tabela Frequenta e Utilizando Opera��es Aritm�ticas */
SELECT
	MATRICULA
  , NOTA					AS [NOTA ANTIGA]
  , NOTA + 0.5				AS [NOTA NOVA]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO