/* Arthur Emanuel e Diego Carraro*/

INSERT INTO aluno (nome, celular, email, github_usuario)
VALUES ('Arthur Emanuel', '4998918-0958','arthuremanueldalalibera@gmail.com', 'ArthurEmanuelDala'),
	('Diego Carraro', '4999840-7925','diegocarraro10@gmail.com', 'DiegoCarraro');
    
INSERT INTO aluno_prova(aluno_id, prova_id) VALUES (1, 784),
	(2, 784);
 
INSERT INTO prova(id, disciplina) 
VALUES (784, 'Banco de Dados Relacionais e SQL');

INSERT INTO pergunta(id, pergunta, prova_id)
VALUES (2, 'O que é um banco de dados?',784),
	(3, 'Explique o que é um SGBD e cite exemplos.', 784),
    (4, 'O que são DML, DCL, DDL e DQL?', 784),
    (5, 'O que é uma Entidade?', 784),
    (6, 'Descreva oque é uma chave primária.', 784),
    (7, 'Descreva o que é uma chave estrangeira.', 784),
    (8, 'Cite a diferença entre chave primária e chave estrangeira', 784),
    (9, 'Um campo do tipo char armazena quais valores? E do tipo, int, varchar, date, datetime?', 784),
    (10, 'Explique a(s) diferenças entre os tipos Timme, Year, DateTime e Date?', 784),
    (11, 'Explique p/ que serve a instrução DELETE.', 784);
    
    
/*(101, 'É um conjunto de tabelas nos quais armazenamos dados, que podem ser fisícos e lógicos, e seu objetivo é facilitar o fornecimento de informações ao usuário', 2),*/    
    
INSERT INTO resposta(id, resposta, pergunta_id)
VALUES(101, 'É um conjunto de tabelas nos quais armazenamos dados, que podem ser fisícos e lógicos, e seu objetivo é facilitar o fornecimento de informações ao usuário', 2),
	  (102, 'Significa o Sistema de Gerenciamento de Banco de Dados, contendo nela ferramentas de edição e criação de tabelas etc.. Tais principais como Oracle, SQL Server, DB2, MongoDB, PostgreSQL, NoSQL', 3),
	  (103, 'DML: É um conjunto de instruções usada nas consultas e modificações dos dados armazenados nas tabelas do banco de dados
		   INSERT: Instrução utilizada para inserir dados a uma ou mais tabelas no banco de dados,
           DCL: São para controle e acesso e gerenciamento de permissões parra usuários no banco de dados. Com eles, pode facilmente permitir ou negar algumas ações para usuários nas tabelas ou registrios
           GRANT: Atribui privilégios de acesso ao usuário,
           DDL: É um conjunto de instruções usado para criar e modificar as estruturas dos objetos armazenados no Banco de Dados
		   CREATE: Usa-se instruções Create para definir novas entidades,
           DQL: Ele é responsável por comandos de consultas aos dados armazenados, dentro dele encontramos apenas o comando SELECT', 4),
	  (104, 'Entidades são objetos que estão presentes no dia a dia, pode ser qualquer coisa, exemplo TV, abajur, um móvel etc...e dentro disso existem os lógicos, que são dependentes dos fisicos e suas de suas funcionalidades
			As entidades ficam dividas em tres tipos: FORTE, FRACA, ASSOCIATIVA', 5),
	  (105, 'Chave primária é o identificador único de um registro na tabela, exemplo CPF onde cada dado é único e não se repete', 6),
	  (106, 'Chave estrangeira é a chave que permite a referência a registros oriundos de outras tabelas', 7),
	  (107, ' A diferença entre chave primária e chave estrangeira é que enquanto a chave primaria é um identificador único a chave estrangeira representa uma relação entre demais tabelas, usando um dado já disponibilizado', 8),
	  (108, 'Char armazena valores inteiros com ou sem sinal tipo valores fixos, INT armazena dados inteiros ,ou seja, somente número, Varchar armazena números, letras, caracteres, ele é do tipo variável, o DATE armazena dados de tempo
			como, meses, data e o DATATIME armazena dados tipo hora, e data com precisão de nanosegundos.', 9),
	  (109, ' TIME é o dado utilizado para armazenar uma faixa de tempo, é exibido pelo MySQL no formato de HH:MM:SS, o YEAR armazena o ano, que pode ser com dois ou quatro algarismos, entre 1901 a 2155, o 
		DATATIME armazena dados tipo hora, e data com precisão de nanosegundos, DATE armazena dados de tempo como, meses, data', 10),
	  (110, ' A instrução DELETE serve para excluir um registro na sua tabela, escreve-se DELETE FROM nome_tabela WHERE Clause', 11);
            
	