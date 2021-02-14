/* Exerc�cios Cap�tulo 06 */


/* 1 - Traga numa consulta:

1. A nota m�xima

2. A nota m�nima

3. A quantidade de faltas de todos os alunos

4. A m�dia aritm�tica das notas

5. O somat�rio das notas */
SELECT
	MAX(NOTA)				AS [NOTA M�XIMA]
  , MIN(NOTA)				AS [NOTA M�NIMA]
  , COUNT(FALTA)			AS [CONTAGEM DE FALTAS]
  , AVG(NOTA)				AS [M�DIA DAS NOTAS]
  , SUM(NOTA)				AS [TOTAL DAS NOTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO


/* 2 - H� um problema nesse comando abaixo. Encontre o erro e corrija.

SELECT falta, COUNT(falta) FROM FREQUENTA*/
SELECT
	COUNT(FALTA)			AS[CONTAGEM DE FALTAS]
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO


/* 3 - Descubra o professor mais velho e mais novo da universidade.

Use a tabela PROFESSOR.*/
SELECT
	MIN(DATANASCIMENTO)		AS [MAIS VELHO]
  , MAX(DATANASCIMENTO)		AS [MAIS NOVO]
FROM
	[SQL_DE_CADA_DIA].[DBO].[PROFESSOR]
GO