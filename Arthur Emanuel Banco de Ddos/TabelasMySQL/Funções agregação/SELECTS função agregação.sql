USE db_agregacao;

SELECT AVG(ALL quantidade_produto) FROM produto Where cod_classe = 8;
SELECT AVG(DISTINCT quantidade_produto) FROM produto Where cod_classe = 8;

SELECT COUNT( * ) FROM produto;
SELECT COUNT(cod_classe) FROM produto;

SELECT MAX(valor_produto) FROM produto;
SELECT MIN(valor_produto) FROM produto;

SELECT SUM(quantidade_produto) FROM produto;
SELECT SUM(DISTINCT quantidade_produto) FROM Produto;

SELECT tipo_produto,
SUM(quantidade_produto * valor_produto) AS valor_estoque
FROM produto
GROUP BY tipo_produto;

SELECT cod_classe,
SUM(quantidade_produto * valor_produto) AS valor_estoque
FROM produto
GROUP BY cod_classe;

SELECT cod_classe,
SUM(quantidade_produto * valor_produto) AS valor_estoque
FROM produto
GROUP BY cod_classe
HAVING SUM(quantidade_produto * valor_produto) > 3000.00;


