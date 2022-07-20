USE db_prova;

/*Crie uma consulta SQL, no db_prova, que retorne todas as
informações da tabela aluno;*/
SELECT * FROM aluno;

/*Crie uma consulta SQL, no db_prova, que retorne as informações
de id e disciplina da tabela prova;*/
SELECT * FROM prova;

/*Crie uma consulta SQL, no db_prova, que retorne todas as
perguntas que comecem com “O que” da tabela pergunta;*/
SELECT pergunta FROM db_prova.pergunta
WHERE pergunta LIKE 'O que%';

/*Crie uma consulta SQL, no db_prova, que retorne o nome e
celular dos alunos armazenados na tabela “aluno” em que o
nome termine com as 03 últimas letras do seu nome, e caso
tenha feito a prova em dupla, do seu colega de dupla;*/
SELECT id, nome, celular
FROM aluno
WHERE nome REGEXP '[uel^-aro^]'
ORDER BY nome asc;

/*Crie uma consulta SQL, no db_prova, que retorne as perguntas
2, 5, 7 e a(s) prova(s) a que estão vinculadas (pertencem);
Altere o banco de dados DEFAULT p/ o sakila;*/
SELECT pergunta FROM db_prova.pergunta
WHERE id = 2 OR id = 5 or id = 7;

/*Crie uma consulta SQL, no sakila, que retorne o nome (title) dos
50 primeiros filmes em ordem alfabética CRESCENTE. Defina o
nome da coluna em português. Altere essa consulta tal que
retorne os 50 últimos filmes e a alfabética seja
DESCRESCENTE;*/

UNLOCK TABLES;









