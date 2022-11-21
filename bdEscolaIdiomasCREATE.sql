--DROP DATABASE bdEscolaIdiomas
CREATE DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR(50) NOT NULL
	, rgAluno VARCHAR(20) NOT NULL
	, logradouroAluno VARCHAR(35) 
	, numEndAluno VARCHAR(10) NOT NULL
	, compAluno VARCHAR(15) NOT NULL
	, bairroAluno VARCHAR(40) NOT NULL
	, cepAluno VARCHAR(14) NOT NULL
	, cidadeAluno VARCHAR(20) NOT NULL
)

CREATE TABLE tbFoneAluno (
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	, foneAluno VARCHAR(20) NOT NULL
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
)

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR(50) NOT NULL
) 

CREATE TABLE tbPeriodo (
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	, nomePeriodo VARCHAR(30) NOT NULL
)

CREATE TABLE tbNivel (
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	, descNivel VARCHAR(50) NOT NULL
)

CREATE TABLE tbDiaSemana (
	idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	, diaSemana VARCHAR(30) NOT NULL
)

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	, horario VARCHAR(8) NOT NULL
	, idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso) NOT NULL
	, idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (idPeriodo) NOT NULL
	, idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel) NOT NULL
	, idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana (idDiaSemana) NOT NULL
)

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	, dataMatricula SMALLDATETIME CHECK (dataMatricula<GETDATE()) NOT NULL
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)  
	, idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)

