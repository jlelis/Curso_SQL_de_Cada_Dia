/* Exerc�cios Cap�tulo 03 */

/* 1 - O gestor da universidade deseja ter uma vis�o geral de todos os alunos matriculados. */
SELECT
	*
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
GO


/* 2 - � necess�rio criar uma consulta que traga para cada aluno: matr�cula, c�digo da turma em que ele est� matriculado, 

nota, quantidade de faltas e semestre. Para ficar mais clara a informa��o, no cabe�alho da tabela deve aparecer 'c�digo da turma' 

para codTurma e 'Qtde de faltas' para faltas. */
SELECT
	MATRICULA
  , COD_TURMA				AS [C�DIGO TURMA]
  , NOTA
  , FALTA
  , SEMESTRE
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO


/* 3 - Crie um relat�rio na forma de consulta que traga os seguintes dados: nome, sexo, cidade, bairro, CEP e endere�o de cada aluno. 

Os campos cidade, bairro, CEP e endere�o devem ser exibidos como uma �nica coluna no resultado, separados 

por * e espaco para cada informa��o. */
SELECT
	NOME
  , SEXO
  , CIDADE
  + ' * '
  + BAIRRO
  + ' * '
  + CEP
  + ' * '
  + ENDERECO
FROM
	[SQL_DE_CADA_DIA].[DBO].[ALUNO]
GO


/* 4 - Exiba todos os registros da tabela turma excluindo a repeti��o do turno. */
SELECT DISTINCT
	  TURNO
FROM
	[SQL_DE_CADA_DIA].[DBO].[TURMA]
GO


/* 5 - Crie um consulta que traga uma nova nota para os alunos: isso �, subtraindo o valor de 1.0 ponto. */
SELECT
	MATRICULA
  , COD_TURMA
  , NOTA				AS [NOTA ANTIGA]
  , NOTA - 1			AS [NOTA NOVA]
  , FALTA
  , SEMESTRE
  , ANO
FROM
	[SQL_DE_CADA_DIA].[DBO].[FREQUENTA]
GO