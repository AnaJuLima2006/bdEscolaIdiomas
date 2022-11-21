USE bdEscolaIdiomas

INSERT INTO tbAluno (nomeAluno, rgAluno, logradouroAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES  ('Anna Jackson Delima Santos', '67890355-0', 'Rua Armando Siva Juiz Rosano', '59A', 'BLOCO F', 'Santa Mesa das Graças', '08797-088', 'Rosália')
	   , ('Sabrina Crista', '12345678-9', 'Rua Pero Perez', '77B', 'Casa B', 'São Rosse', '09999-099', 'Joãozinho')
	   , ('Péter Cavinská', '8765432-9', 'Rua Canadá', '98C', 'Casa 67', 'Santa Marcelina', '05632-098', 'São Roque')
	   , (' Rosa Marie Desilva', '6932583-8', 'Rua Coração Indomável',  '56D', 'Casa 48 ', 'Marezia', '01235-066', 'Pedro Luíz')
	   , (' Marivalda dos Santos', '5558963-7', 'Rua Nossa Senhora do Faoes', '45E', ' BLOCO M ','Santtiago', '02389-044', 'São Pedrinho')
	   , (' Soppia Valverde', '4482236-5', 'Rua das Pedras Azuis', ' 98F', ' BLOCO G ', 'Lealdade', '02298-065', 'Vale Rico')
	   
SELECT * FROM tbAluno

INSERT INTO tbFoneAluno(foneAluno, idAluno)
VALUES	 ('1169965-5566', 1)
		,('1189933-6932', 1)
		,('1155889-3665', 2)
		,('1188963-5633', 2)
		,('1255632-2136', 3)
		,('1244756-9967', 3)
		,('1236552-6645', 4)
		,('1255205-9984', 4)
		,('1958204-3251', 5)
		,('1965448-6327', 5)
		,('1922535-9613', 6)
		,('1922088-6742', 6)
SELECT * FROM  tbFoneAluno

INSERT INTO tbCurso(nomeCurso)
VALUES	 ('Espanhol')
		,('Inglês')
		,('Alemão')
SELECT * FROM tbCurso

INSERT INTO tbPeriodo(nomePeriodo)
VALUES	 ('Manhã')
		,('Tarde')
		,('Noite')
SELECT * FROM tbPeriodo

INSERT INTO tbNivel(descNivel)
VALUES	 ('Iniciante')
		,('Intermediário')
		,('Fluente')
SELECT * FROM tbNivel

INSERT INTO tbDiaSemana(diaSemana)
VALUES	 ('Segunda-feira')
		,('Terça-feira')
		,('Quarta-feira')
		,('Quinta-feira')
		,('Sexta-feira')
		,('Sábado')
SELECT * FROM tbDiaSemana

INSERT INTO tbTurma(horario, idCurso, idPeriodo, idNivel, idDiaSemana)
VALUES   ('09:30:00', 1, 1, 2, 3)
		,('11:30:00', 2, 1, 1, 4)
		,('13:30:00', 3, 2, 3, 5)
		,('15:30:00', 1, 2, 2, 2)
		,('19:30:00', 3, 3, 3, 6)
SELECT * FROM tbTurma

INSERT INTO tbMatricula(dataMatricula, idAluno, idTurma)
VALUES   ('15/06/2020', 1, 3)
		,('16/06/2020', 1, 5)
		,('22/07/2020', 2, 1)
		,('25/07/2020', 2, 4)
		,('06/08/2020', 3, 2)
		,('15/08/2020', 3, 4)
		,('12/09/2020', 4, 1)
		,('07/10/2020', 4, 3)
		,('29/10/2020', 5, 4)
		,('18/11/2020', 5, 5)
		,('02/12/2020', 6, 1)
		,('26/01/2021', 6, 5)
SELECT * FROM tbMatricula

	
		

	






		

		
		
		
